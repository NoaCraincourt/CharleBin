install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst

lint:
	@echo "--- 1. PHP Lint ---"
	@echo "--- 2. PHP Code Sniffer ---"
	vendor\bin\phpcs lib/
	@echo "--- 3. PHP Mess Detector ---"
	vendor\bin\phpmd lib/ ansi codesize,unusedcode,naming