do
st=inputbox("Microsoft �����˽���ȡ�����������","����������")
if st = "" then exit do 
CreateObject("SAPI.SpVoice").Speak st
loop