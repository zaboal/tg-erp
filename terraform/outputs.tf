output "businessru_function_url" {
	value = "https://functions.yandexcloud.net/${yandex_function.businessru.id}"
	description = <<-EOT
	Ссылка на функцию для Бизнес.Ру в Yandex Cloud
	Для ручной установки в качестве вебхука для интеграции
	EOT
}

output "telegram_function_url" {
	value = "https://functions.yandexcloud.net/${yandex_function.telegram.id}"
	description = <<-EOT
	Ссылка на функцию для Telegram в Yandex Cloud
	EOT
}

output "telegram_url" {
  value = "https://t.me/${nonsensitive(jsondecode(data.curl_request.telegram_getme.response_body).result.username)}"
	description = <<-EOT
	Ссылка на бота в Telegram
	https://core.telegram.org/api/links#public-username-links
	EOT 
}