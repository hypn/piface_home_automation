#include <unistd.h>
#include <libpiface-1.0/pfio.h>

int main(int argc, char** argv)
{
    if (pfio_init() < 0)
        exit(-1);

    for (int i=1; i<argc; ++i) {
        pfio_digital_write(atoi(argv[i]), 1);
    }

    pfio_deinit();
    return 0;
}
