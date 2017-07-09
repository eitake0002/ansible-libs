
function ansible-basic-syntax()
{
  echo 'ansible <host> -m <module_name>'
}

function exec-local()
{
  ansible localhost -m ping --connection=local
}
