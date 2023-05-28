function mkctl --wraps='microk8s kubectl' --description 'alias mkctl=microk8s kubectl'
  microk8s kubectl $argv
        
end
