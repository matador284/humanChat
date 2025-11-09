@echo off
echo Testando conexao com Groq API...

curl -X POST "https://api.groq.com/openai/v1/chat/completions" ^
-H "Content-Type: application/json" ^
-H "Authorization: Bearer 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" ^
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