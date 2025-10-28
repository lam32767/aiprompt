@Echo off
Set _string=%~1
cls
Echo  %_string%
echo.
curl -s -X POST http://localhost:11434/api/generate -d "{\"model\":\"llama3\",\"prompt\":\"%_string%\",\"stream\": false}" | jq -r ".response"


