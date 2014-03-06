#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <string.h>



#define pSrc_filename "./src.txt"
#define pDst_filename "./dst"

typedef struct mz_stream_s
{
    const unsigned char * next_in;
    unsigned char * next_out;
} mz_stream;

typedef struct tdefl_compressor_s
{
   char m_output_buf[4096]; 
} tdefl_compressor;

static uint8_t s_inbuf[4096];
static uint8_t s_outbuf[4096];

void tdefl_compress(tdefl_compressor * d, const void * pIn_buf, void * pOut_buf, size_t rc)
{
    int i;
    for (i = 0; i < rc; i++)
    {
        d->m_output_buf[i] = *((size_t *)pIn_buf + i);
        printf("%d\n", d->m_output_buf[i]);
    }
    memcpy(pOut_buf, d->m_output_buf, rc);
}

void mz_deflate(mz_stream * pStream, size_t rc)
{
    tdefl_compressor d;
    tdefl_compress(&d, pStream->next_in, pStream->next_out, rc);
}

int main(int argc, char **argv)
{
    mz_stream stream;
    memset(&stream, 0, sizeof(stream));
    stream.next_in = s_inbuf;
    stream.next_out = s_outbuf;

    FILE *pInfile, *pOutfile;
    pInfile = fopen(pSrc_filename, "rb");
    pOutfile = fopen(pDst_filename, "wb");

    size_t rc = fread(s_inbuf, 1, 4096, pInfile);
    printf("rc=%d\n", rc);
	if (rc <= 0)
		return -1;
	else
	{
		mz_deflate(&stream, rc);
        fwrite(s_outbuf, 1, rc, pOutfile);
	}
	fclose(pInfile);
	fclose(pOutfile);
	return 0;
}
