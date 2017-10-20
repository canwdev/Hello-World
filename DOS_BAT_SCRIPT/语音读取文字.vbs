do
st=inputbox("Microsoft 讲述人将读取您输入的内容","请输入内容")
if st = "" then exit do 
CreateObject("SAPI.SpVoice").Speak st
loop