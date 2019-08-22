
echo "preparing elasticsearch..."

./migrator/cleanup.sh
./migrator/migrate.sh
./seeder/seed.sh

echo "done preparing elasticsearch."