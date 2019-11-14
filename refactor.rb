def customer_state(session_id = nil)
  return { state: 'chat_disabled' } unless Setting.get('chat')
  return session_id   
    chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])
      case chat_session.state 
      when 'running'
        user = nil
        chat_user = User.lookup(id: chat_session.user_id)
        running_session(chat_user, chat_session, session_id)
      when 'waiting'
        waiting_session(chat_session)
      else 
        "state no found"              
      end        
       
  return { state: 'offline' } if Chat.active_agent_count([id]).zero?
  
  waiting_count = Chat.waiting_chat_count(id)
  return { state: 'no_seats_available', queue: waiting_count,} if waiting_count >= max_queue
    { state: 'online' }
end
  
def waiting_session(chat_session)
  { state:    'reconnect', position: chat_session.position,}
end
    
def running_session(chat_user, chat_session, session_id)
  url = nil
  url = "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
    
  if chat_user.image && chat_user.image != 'none'
    user = {
        name:   chat_user.fullname,
        avatar: url,
    }
  session = Chat::Session.messages_by_session_id(session_id)
  return unless session
  return { state:   'reconnect', session: session,agent: user, }
  end    
end  