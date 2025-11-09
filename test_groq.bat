@echo off
echo Testando conexao com Groq API...

curl -X POST "https://api.groq.com/openai/v1/chat/completions" ^
-H "Content-Type: application/json" ^
-H "Authorization: Bearer SUA API GROQ AQUI PARA TESTAR SE ESTA FUNCIONANDO" ^
-d "{
  \"model\": \"llama-3.1-8b-instant\",
  \"messages\": [
    {\"role\": \"system\", \"content\": \"Voce e um jogador de RO.\"},
    {\"role\": \"user\", \"content\": \"oi tudo bem?\"}
  ],
  \"max_tokens\": 50
}"

echo.
echo Se aparecer JSON acima, a API esta funcionando!
echo Se der erro, a chave pode estar invalida.

pause
