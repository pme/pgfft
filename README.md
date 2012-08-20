kissfft 0.0.1
=============

This library contains a single PostgreSQL extension, an fft (Fast-Fourier
Transformation) based on Mark Borgerding's work (http://sourceforge.net/projects/kissfft/).

To build kissfft, just do this:

	make
	make installcheck
	make install

If you encounter an error such as:

	"Makefile", line 8: Need an operator

You need to use GNU make, which may well be installed on your system as
`gmake`:

	gmake
	gmake install
	gmake installcheck

If you encounter an error such as:

	make: pg_config: Command not found

Be sure that you have `pg_config` installed and in your path. If you used a
package management system such as RPM to install PostgreSQL, be sure that the
`-devel` package is also installed. If necessary tell the build process where
to find it:

	env PG_CONFIG=/path/to/pg_config make && make installcheck && make install

If you encounter an error such as:

	ERROR:  must be owner of database regression

You need to run the test suite using a super user, such as the default
"postgres" super user:

	make installcheck PGUSER=postgres

Once kissfft is installed, you can add it to a database. If you're running
PostgreSQL 9.1.0 or greater, it's a simple as connecting to a database as a
super user and running:

	CREATE EXTENSION kissfft;

If you've upgraded your cluster to PostgreSQL 9.1 and already had kissfft
installed, you can upgrade it to a properly packaged extension with:

	CREATE EXTENSION kissfft FROM unpackaged;

For versions of PostgreSQL less than 9.1.0, you'll need to run the
installation script:

	psql -d mydb -f /path/to/pgsql/share/contrib/kissfft.sql

If you want to install kissfft and all of its supporting objects into a
specific schema, use the `PGOPTIONS` environment variable to specify the
schema, like so:

	PGOPTIONS=--search_path=extensions psql -d mydb -f kissfft.sql
