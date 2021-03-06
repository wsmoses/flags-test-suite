#include "mltaln.h"
#include "dp.h"

#define MACHIGAI 0
#define OUTGAP0TRY 1
#define DEBUG 0
#define XXXXXXX    0
#define USE_PENALTY_EX  0
#define FASTMATCHCALC 1


static int impalloclen = 0;
static float **impmtx = NULL;
float part_imp_match_out_scQ( int i1, int j1 )
{
//	fprintf( stderr, "impalloclen = %d\n", impalloclen );
//	fprintf( stderr, "i1,j1=%d,%d -> impmtx=%f\n", i1, j1, impmtx[i1][j1] );
	return( impmtx[i1][j1] );
#if 0
	if( i1 == l1 || j1 == l2 ) return( 0.0 );
	return( impmtx[i1+start1][j1+start2] );
#endif
}
static void part_imp_match_out_vead_gapmapQ( float *imp, int i1, int lgth2, int start2, int *gapmap2 )
{
#if FASTMACHCALC
	float *pt = imp;
	int *gapmappt = gapmap2;
	while( lgth2-- )
		*pt++ += impmtx[i1][start2+*gapmappt++];
#else
	int j;
	for( j=0; j<lgth2; j++ )
	{
		imp[j] += impmtx[i1][start2+gapmap2[j]];
	}
#endif
}

static void part_imp_match_out_vead_tate_gapmapQ( float *imp, int j1, int lgth1, int start1, int *gapmap1 )
{
#if FASTMACHCALC
	float *pt = imp;
	int *gapmappt = gapmap1;
	while( lgth1-- )
		*pt++ = impmtx[start1+*gapmappt++][j1];
#else
	int i;
	for( i=0; i<lgth1; i++ )
	{
		imp[i] += impmtx[start1+gapmap1[i]][j1];
	}
#endif
}

void part_imp_match_init_strictQ( float *imp, int clus1, int clus2, int lgth1, int lgth2, char **seq1, char **seq2, double *eff1, double *eff2, LocalHom ***localhom, int forscore )
{
	int i, j, k1, k2, tmpint, start1, start2, end1, end2;
	double effij, effijx; 
	char *pt, *pt1, *pt2;
	LocalHom *tmpptr;

	if( impalloclen <= lgth1 + 2 || impalloclen <= lgth2 + 2 )
	{
		if( impmtx ) FreeFloatMtx( impmtx );
		impalloclen = MAX( lgth1, lgth2 ) + 2;
		impmtx = AllocateFloatMtx( impalloclen+100, impalloclen+100 );
	}


#if 0
	fprintf( stderr, "eff1 in _init_strict = \n" );
	for( i=0; i<clus1; i++ )
		fprintf( stderr, "eff1[] = %f\n", eff1[i] );
	for( i=0; i<clus2; i++ )
		fprintf( stderr, "eff2[] = %f\n", eff2[i] );
#endif

	for( i=0; i<lgth1; i++ ) for( j=0; j<lgth2; j++ )
		impmtx[i][j] = 0.0;
	effijx = 1.0 * fastathreshold;
	for( i=0; i<clus1; i++ )
	{
		for( j=0; j<clus2; j++ )
		{
			effij = eff1[i] * eff2[j] * effijx;
			tmpptr = localhom[i][j];
			while( tmpptr )
			{
//				fprintf( stderr, "start1 = %d\n", tmpptr->start1 );
//				fprintf( stderr, "end1   = %d\n", tmpptr->end1   );
//				fprintf( stderr, "i = %d, seq1 = \n%s\n", i, seq1[i] );
//				fprintf( stderr, "j = %d, seq2 = \n%s\n", j, seq2[j] );
				pt = seq1[i];
				tmpint = -1;
				while( *pt != 0 )
				{
					if( *pt++ != '-' ) tmpint++;
					if( tmpint == tmpptr->start1 ) break;
				}
				start1 = (int)( pt - seq1[i] ) - 1;
	
				if( tmpptr->start1 == tmpptr->end1 ) end1 = start1;
				else
				{
#if MACHIGAI
					while( *pt != 0 )
					{
						if( tmpint == tmpptr->end1 ) break;
						if( *pt++ != '-' ) tmpint++;
					}
					end1 = (int)( pt - seq1[i] ) - 1;
#else
					while( *pt != 0 )
					{
//						fprintf( stderr, "tmpint = %d, end1 = %d pos = %d\n", tmpint, tmpptr->end1, pt-seq1[i] );
						if( *pt++ != '-' ) tmpint++;
						if( tmpint == tmpptr->end1 ) break;
					}
					end1 = (int)( pt - seq1[i] ) - 1;
#endif
				}
	
				pt = seq2[j];
				tmpint = -1;
				while( *pt != 0 )
				{
					if( *pt++ != '-' ) tmpint++;
					if( tmpint == tmpptr->start2 ) break;
				}
				start2 = (int)( pt - seq2[j] ) - 1;
				if( tmpptr->start2 == tmpptr->end2 ) end2 = start2;
				else
				{
#if MACHIGAI
					while( *pt != 0 )
					{
						if( tmpint == tmpptr->end2 ) break;
						if( *pt++ != '-' ) tmpint++;
					}
					end2 = (int)( pt - seq2[j] ) - 1;
#else
					while( *pt != 0 )
					{
						if( *pt++ != '-' ) tmpint++;
						if( tmpint == tmpptr->end2 ) break;
					}
					end2 = (int)( pt - seq2[j] ) - 1;
#endif
				}
//				fprintf( stderr, "start1 = %d (%c), end1 = %d (%c), start2 = %d (%c), end2 = %d (%c)\n", start1, seq1[i][start1], end1, seq1[i][end1], start2, seq2[j][start2], end2, seq2[j][end2] );
//				fprintf( stderr, "step 0\n" );
				if( end1 - start1 != end2 - start2 )
				{
//					fprintf( stderr, "CHUUI!!, start1 = %d, end1 = %d, start2 = %d, end2 = %d\n", start1, end1, start2, end2 );
				}

				k1 = start1; k2 = start2;
				pt1 = seq1[i] + k1;
				pt2 = seq2[j] + k2;
				while( *pt1 && *pt2 )
				{
					if( *pt1 != '-' && *pt2 != '-' )
					{
// ??????????????????????????????????????????
//						impmtx[k1][k2] += tmpptr->wimportance * fastathreshold;
//						impmtx[k1][k2] += tmpptr->importance * effij;
						impmtx[k1][k2] += tmpptr->fimportance * effij;
//						fprintf( stderr, "k1=%d, k2=%d, impalloclen=%d\n", k1, k2, impalloclen );
//						fprintf( stderr, "mark, %d (%c) - %d (%c) \n", k1, *pt1, k2, *pt2 );
						k1++; k2++;
						pt1++; pt2++;
					}
					else if( *pt1 != '-' && *pt2 == '-' )
					{
//						fprintf( stderr, "skip, %d (%c) - %d (%c) \n", k1, *pt1, k2, *pt2 );
						k2++; pt2++;
					}
					else if( *pt1 == '-' && *pt2 != '-' )
					{
//						fprintf( stderr, "skip, %d (%c) - %d (%c) \n", k1, *pt1, k2, *pt2 );
						k1++; pt1++;
					}
					else if( *pt1 == '-' && *pt2 == '-' )
					{
//						fprintf( stderr, "skip, %d (%c) - %d (%c) \n", k1, *pt1, k2, *pt2 );
						k1++; pt1++;
						k2++; pt2++;
					}
					if( k1 > end1 || k2 > end2 ) break;
				}
				tmpptr = tmpptr->next;
			}
		}
	}
#if 0
	fprintf( stderr, "impmtx = \n" );
	for( k2=0; k2<lgth2; k2++ )
		fprintf( stderr, "%6.3f ", (double)k2 );
	fprintf( stderr, "\n" );
	for( k1=0; k1<lgth1; k1++ )
	{
		fprintf( stderr, "%d", k1 );
		for( k2=0; k2<lgth2; k2++ )
			fprintf( stderr, "%2.1f ", impmtx[k1][k2] );
		fprintf( stderr, "\n" );
	}
	exit( 1 );
#endif
}


void part_imp_rnaQ( int nseq1, int nseq2, char **seq1, char **seq2, double *eff1, double *eff2, RNApair ***grouprna1, RNApair ***grouprna2, int *gapmap1, int *gapmap2, RNApair *additionalpair )
{
	foldrna( nseq1, nseq2, seq1, seq2, eff1, eff2, grouprna1, grouprna2, impmtx, gapmap1, gapmap2, additionalpair );
}


void part_imp_match_initQ( float *imp, int clus1, int clus2, int lgth1, int lgth2, char **seq1, char **seq2, double *eff1, double *eff2, LocalHom ***localhom )
{
	int dif, i, j, k1, k2, tmpint, start1, start2, end1, end2;
	static int impalloclen = 0;
	char *pt;
	static char *nocount1 = NULL;
	static char *nocount2 = NULL;

	if( impalloclen < lgth1 || impalloclen < lgth2 )
	{
		if( impmtx ) FreeFloatMtx( impmtx );
		if( nocount1 ) free( nocount1 );
		if( nocount2 ) free( nocount2 );
		impalloclen = MAX( lgth1, lgth2 ) + 2;
		impmtx = AllocateFloatMtx( impalloclen, impalloclen );
		nocount1 = AllocateCharVec( impalloclen );
		nocount2 = AllocateCharVec( impalloclen );
		impalloclen -= 2;
	}

	for( i=0; i<lgth1; i++ )
	{
		for( j=0; j<clus1; j++ )
			if( seq1[j][i] == '-' ) break;
		if( j != clus1 ) nocount1[i] = 1; 
		else			 nocount1[i] = 0;
	}
	for( i=0; i<lgth2; i++ )
	{
		for( j=0; j<clus2; j++ )
			if( seq2[j][i] == '-' ) break;
		if( j != clus2 ) nocount2[i] = 1;
		else			 nocount2[i] = 0;
	}

#if 0
fprintf( stderr, "nocount2 =\n" );
for( i = 0; i<impalloclen; i++ )
{
	fprintf( stderr, "nocount2[%d] = %d (%c)\n", i, nocount2[i], seq2[0][i] );
}
#endif

	for( i=0; i<lgth1; i++ ) for( j=0; j<lgth2; j++ )
		impmtx[i][j] = 0.0;
	for( i=0; i<clus1; i++ )
	{
		fprintf( stderr, "i = %d, seq1 = %s\n", i, seq1[i] );
		for( j=0; j<clus2; j++ )
		{
			fprintf( stderr, "start1 = %d\n", localhom[i][j]->start1 );
			fprintf( stderr, "end1   = %d\n", localhom[i][j]->end1   );
			fprintf( stderr, "j = %d, seq2 = %s\n", j, seq2[j] );
			pt = seq1[i];
			tmpint = -1;
			while( *pt != 0 )
			{
				if( *pt++ != '-' ) tmpint++;
				if( tmpint == localhom[i][j]->start1 ) break;
			}
			start1 = pt - seq1[i] - 1;

			while( *pt != 0 )
			{
//				fprintf( stderr, "tmpint = %d, end1 = %d pos = %d\n", tmpint, localhom[i][j].end1, pt-seq1[i] );
				if( *pt++ != '-' ) tmpint++;
				if( tmpint == localhom[i][j]->end1 ) break;
			}
			end1 = pt - seq1[i] - 1;

			pt = seq2[j];
			tmpint = -1;
			while( *pt != 0 )
			{
				if( *pt++ != '-' ) tmpint++;
				if( tmpint == localhom[i][j]->start2 ) break;
			}
			start2 = pt - seq2[j] - 1;
			while( *pt != 0 )
			{
				if( *pt++ != '-' ) tmpint++;
				if( tmpint == localhom[i][j]->end2 ) break;
			}
			end2 = pt - seq2[j] - 1;
//			fprintf( stderr, "start1 = %d, end1 = %d, start2 = %d, end2 = %d\n", start1, end1, start2, end2 );
			k1 = start1;
			k2 = start2;
			fprintf( stderr, "step 0\n" );
			while( k1 <= end1 && k2 <= end2 )
			{
#if 0
				if( !nocount1[k1] && !nocount2[k2] )
					impmtx[k1][k2] += localhom[i][j].wimportance * eff1[i] * eff2[j];
				k1++; k2++;
#else
				if( !nocount1[k1] && !nocount2[k2] )
					impmtx[k1][k2] += localhom[i][j]->wimportance * eff1[i] * eff2[j];
				k1++; k2++;
#endif
			}

			dif = ( end1 - start1 ) - ( end2 - start2 );
			fprintf( stderr, "dif = %d\n", dif );
			if( dif > 0 )
			{
				do
				{
					fprintf( stderr, "dif = %d\n", dif );
					k1 = start1;
					k2 = start2 - dif;
					while( k1 <= end1 && k2 <= end2 )
					{
						if( 0 <= k2 && start2 <= k2 && !nocount1[k1] && !nocount2[k2] )
							impmtx[k1][k2] = localhom[i][j]->wimportance * eff1[i] * eff2[j];
						k1++; k2++;
					}
				}
				while( dif-- );
			}
			else
			{
				do
				{
					k1 = start1 + dif;
					k2 = start2;
					while( k1 <= end1 )
					{
						if( k1 >= 0 && k1 >= start1 && !nocount1[k1] && !nocount2[k2] )
							impmtx[k1][k2] = localhom[i][j]->wimportance * eff1[i] * eff2[j];
						k1++; k2++;
					}
				}
				while( dif++ );
			}
		}
	}
#if 0
	fprintf( stderr, "impmtx = \n" );
	for( k2=0; k2<lgth2; k2++ )
		fprintf( stderr, "%6.3f ", (double)k2 );
	fprintf( stderr, "\n" );
	for( k1=0; k1<lgth1; k1++ )
	{
		fprintf( stderr, "%d", k1 );
		for( k2=0; k2<lgth2; k2++ )
			fprintf( stderr, "%6.3f ", impmtx[k1][k2] );
		fprintf( stderr, "\n" );
	}
	exit( 1 );
#endif
}

static void match_calc( float *match, float **cpmx1, float **cpmx2, int i1, int lgth2, float **floatwork, int **intwork, int initialize )
{
#if FASTMATCHCALC
	int j, l;
	float scarr[26];
	float **cpmxpd = floatwork;
	int **cpmxpdn = intwork;
	float *matchpt, *cpmxpdpt, **cpmxpdptpt;
	int *cpmxpdnpt, **cpmxpdnptpt;
	if( initialize )
	{
		int count = 0;
		for( j=0; j<lgth2; j++ )
		{
			count = 0;
			for( l=0; l<26; l++ )
			{
				if( cpmx2[l][j] )
				{
					cpmxpd[j][count] = cpmx2[l][j];
					cpmxpdn[j][count] = l;
					count++;
				}
			}
			cpmxpdn[j][count] = -1;
		}
	}

	{
		for( l=0; l<26; l++ )
		{
			scarr[l] = 0.0;
			for( j=0; j<26; j++ )
//				scarr[l] += n_dis[j][l] * cpmx1[j][i1];
				scarr[l] += n_dis_consweight_multi[j][l] * cpmx1[j][i1];
		}
		matchpt = match;
		cpmxpdnptpt = cpmxpdn;
		cpmxpdptpt = cpmxpd;
		while( lgth2-- )
		{
			*matchpt = 0.0;
			cpmxpdnpt = *cpmxpdnptpt++;
			cpmxpdpt = *cpmxpdptpt++;
			while( *cpmxpdnpt>-1 )
				*matchpt += scarr[*cpmxpdnpt++] * *cpmxpdpt++;
			matchpt++;
		} 
	}
#else
	int j, k, l;
	float scarr[26];
	float **cpmxpd = floatwork;
	int **cpmxpdn = intwork;
	// simple
	if( initialize )
	{
		int count = 0;
		for( j=0; j<lgth2; j++ )
		{
			count = 0;
			for( l=0; l<26; l++ )
			{
				if( cpmx2[l][j] )
				{
					cpmxpd[count][j] = cpmx2[l][j];
					cpmxpdn[count][j] = l;
					count++;
				}
			}
			cpmxpdn[count][j] = -1;
		}
	}
	for( l=0; l<26; l++ )
	{
		scarr[l] = 0.0;
		for( k=0; k<26; k++ )
//			scarr[l] += n_dis[k][l] * cpmx1[k][i1];
			scarr[l] += n_dis_consweight_multi[k][l] * cpmx1[k][i1];
	}
	for( j=0; j<lgth2; j++ )
	{
		match[j] = 0.0;
		for( k=0; cpmxpdn[k][j]>-1; k++ )
			match[j] += scarr[cpmxpdn[k][j]] * cpmxpd[k][j];
	} 
#endif
}

static void Atracking_localhom( float *impwmpt, float *lasthorizontalw, float *lastverticalw, 
						char **seq1, char **seq2, 
                        char **mseq1, char **mseq2, 
                        float **cpmx1, float **cpmx2, 
                        int **ijp, int icyc, int jcyc,
						int start1, int end1, int start2, int end2,
						int *gapmap1, int *gapmap2 )
{
	int i, j, l, iin, jin, ifi, jfi, lgth1, lgth2, k;
	char gap[] = "-";
	float wm;
	lgth1 = strlen( seq1[0] );
	lgth2 = strlen( seq2[0] );

#if 0
	for( i=0; i<lgth1; i++ ) 
	{
		fprintf( stderr, "lastverticalw[%d] = %f\n", i, lastverticalw[i] );
	}
#endif
 
	if( outgap == 1 )
		;
	else
	{
		wm = lastverticalw[0];
		for( i=0; i<lgth1; i++ )
		{
			if( lastverticalw[i] >= wm )
			{
				wm = lastverticalw[i];
				iin = i; jin = lgth2-1;
				ijp[lgth1][lgth2] = +( lgth1 - i );
			}
		}
		for( j=0; j<lgth2; j++ )
		{
			if( lasthorizontalw[j] >= wm )
			{
				wm = lasthorizontalw[j];
				iin = lgth1-1; jin = j;
				ijp[lgth1][lgth2] = -( lgth2 - j );
			}
		}
	}

    for( i=0; i<lgth1+1; i++ ) 
    {
        ijp[i][0] = i + 1;
    }
    for( j=0; j<lgth2+1; j++ ) 
    {
        ijp[0][j] = -( j + 1 );
    }

	for( i=0; i<icyc; i++ )
	{
		mseq1[i] += lgth1+lgth2;
		*mseq1[i] = 0;
	}
	for( j=0; j<jcyc; j++ )
	{
		mseq2[j] += lgth1+lgth2;
		*mseq2[j] = 0;
	}
	iin = lgth1; jin = lgth2;
	*impwmpt = 0.0;
	for( k=0; k<=lgth1+lgth2; k++ ) 
	{
		if( ijp[iin][jin] < 0 ) 
		{
			ifi = iin-1; jfi = jin+ijp[iin][jin];
		}
		else if( ijp[iin][jin] > 0 )
		{
			ifi = iin-ijp[iin][jin]; jfi = jin-1;
		}
		else
		{
			ifi = iin-1; jfi = jin-1;
		}
		l = iin - ifi;
		while( --l ) 
		{
			for( i=0; i<icyc; i++ )
				*--mseq1[i] = seq1[i][ifi+l];
			for( j=0; j<jcyc; j++ ) 
				*--mseq2[j] = *gap;
			k++;
		}
		l= jin - jfi;
		while( --l )
		{
			for( i=0; i<icyc; i++ ) 
				*--mseq1[i] = *gap;
			for( j=0; j<jcyc; j++ ) 
				*--mseq2[j] = seq2[j][jfi+l];
			k++;
		}
		if( iin != lgth1 && jin != lgth2 ) // ??
		{
			*impwmpt += part_imp_match_out_scQ( gapmap1[iin]+start1, gapmap2[jin]+start2 );
//			fprintf( stderr, "impwm = %f (iin=%d, jin=%d) seq1=%c, seq2=%c\n", *impwmpt, iin, jin, seq1[0][iin], seq2[0][jin] );
		}
		if( iin <= 0 || jin <= 0 ) break;
		for( i=0; i<icyc; i++ ) 
			*--mseq1[i] = seq1[i][ifi];
		for( j=0; j<jcyc; j++ ) 
			*--mseq2[j] = seq2[j][jfi];
		k++;
		iin = ifi; jin = jfi;
	}
}
static float Atracking( float *lasthorizontalw, float *lastverticalw, 
						char **seq1, char **seq2, 
                        char **mseq1, char **mseq2, 
                        float **cpmx1, float **cpmx2, 
                        int **ijp, int icyc, int jcyc )
{
	int i, j, l, iin, jin, ifi, jfi, lgth1, lgth2, k, lastk;
	char gap[] = "-";
	float wm = 0.0;
	lgth1 = strlen( seq1[0] );
	lgth2 = strlen( seq2[0] );

#if 0
	for( i=0; i<lgth1; i++ ) 
	{
		fprintf( stderr, "lastverticalw[%d] = %f\n", i, lastverticalw[i] );
	}
#endif
 
	if( outgap == 1 )
		;
	else
	{
		wm = lastverticalw[0];
		for( i=0; i<lgth1; i++ )
		{
			if( lastverticalw[i] >= wm )
			{
				wm = lastverticalw[i];
				iin = i; jin = lgth2-1;
				ijp[lgth1][lgth2] = +( lgth1 - i );
			}
		}
		for( j=0; j<lgth2; j++ )
		{
			if( lasthorizontalw[j] >= wm )
			{
				wm = lasthorizontalw[j];
				iin = lgth1-1; jin = j;
				ijp[lgth1][lgth2] = -( lgth2 - j );
			}
		}
	}

    for( i=0; i<lgth1+1; i++ ) 
    {
        ijp[i][0] = i + 1;
    }
    for( j=0; j<lgth2+1; j++ ) 
    {
        ijp[0][j] = -( j + 1 );
    }

	for( i=0; i<icyc; i++ )
	{
		mseq1[i] += lgth1+lgth2;
		*mseq1[i] = 0;
	}
	for( j=0; j<jcyc; j++ )
	{
		mseq2[j] += lgth1+lgth2;
		*mseq2[j] = 0;
	}
	iin = lgth1; jin = lgth2;
	lastk = lgth1+lgth2;
	for( k=0; k<=lastk; k++ ) 
	{
		if( ijp[iin][jin] < 0 ) 
		{
			ifi = iin-1; jfi = jin+ijp[iin][jin];
		}
		else if( ijp[iin][jin] > 0 )
		{
			ifi = iin-ijp[iin][jin]; jfi = jin-1;
		}
		else
		{
			ifi = iin-1; jfi = jin-1;
		}
		l = iin - ifi;
		while( --l ) 
		{
			for( i=0; i<icyc; i++ )
				*--mseq1[i] = seq1[i][ifi+l];
			for( j=0; j<jcyc; j++ ) 
				*--mseq2[j] = *gap;
			k++;
		}
		l= jin - jfi;
		while( --l )
		{
			for( i=0; i<icyc; i++ ) 
				*--mseq1[i] = *gap;
			for( j=0; j<jcyc; j++ ) 
				*--mseq2[j] = seq2[j][jfi+l];
			k++;
		}
		if( iin <= 0 || jin <= 0 ) break;
		for( i=0; i<icyc; i++ ) 
			*--mseq1[i] = seq1[i][ifi];
		for( j=0; j<jcyc; j++ ) 
			*--mseq2[j] = seq2[j][jfi];
		k++;
		iin = ifi; jin = jfi;
	}
	return( 0.0 );
}

float partQ__align( char **seq1, char **seq2, double *eff1, double *eff2, int icyc, int jcyc, int alloclen, LocalHom ***localhom, float *impmatch, int start1, int end1, int start2, int end2, int *gapmap1, int *gapmap2, char *sgap1, char *sgap2, char *egap1, char *egap2 )
/* score no keisan no sai motokaraaru gap no atukai ni mondai ga aru */
{
//	int k;
	register int i, j;
	int lasti, lastj; /* outgap == 0 -> lgth1, outgap == 1 -> lgth1+1 */
	int lgth1, lgth2;
	int resultlen;
	float wm = 0.0;   /* int ?????? */
	float g;
	float *currentw, *previousw;
#if 1
	float *wtmp;
	int *ijppt;
	float *mjpt, *prept, *curpt;
	int *mpjpt;
#endif
	static float mi, *m;
	static int **ijp;
	static int mpi, *mp;
	static float *w1, *w2;
	static float *match;
	static float *initverticalw;    /* kufuu sureba iranai */
	static float *lastverticalw;    /* kufuu sureba iranai */
	static char **mseq1;
	static char **mseq2;
	static char **mseq;
	static float *digf1; 
	static float *digf2; 
	static float *diaf1; 
	static float *diaf2; 
	static float *gapz1; 
	static float *gapz2; 
	static float *gapf1; 
	static float *gapf2; 
	static float *ogcp1g;
	static float *ogcp2g;
	static float *fgcp1g;
	static float *fgcp2g;
	static float *og_h_dg_n1_p;
	static float *og_h_dg_n2_p;
	static float *fg_h_dg_n1_p;
	static float *fg_h_dg_n2_p;
	static float *og_t_fg_h_dg_n1_p;
	static float *og_t_fg_h_dg_n2_p;
	static float *fg_t_og_h_dg_n1_p;
	static float *fg_t_og_h_dg_n2_p;
	static float *gapz_n1;
	static float *gapz_n2;
	static float **cpmx1;
	static float **cpmx2;
	static int **intwork;
	static float **floatwork;
	static int orlgth1 = 0, orlgth2 = 0;
	float fpenalty = (float)penalty;
#if USE_PENALTY_EX
	float fpenalty_ex = (float)penalty_ex;
#endif
	float tmppenal;
	float *fg_t_og_h_dg_n2_p_pt;
	float *og_t_fg_h_dg_n2_p_pt;
	float *og_h_dg_n2_p_pt;
	float *fg_h_dg_n2_p_pt;
	float *gapz_n2_pt0;
	float *gapz_n2_pt1;
	float *fgcp2pt;
	float *ogcp2pt;
	float fg_t_og_h_dg_n1_p_va;
	float og_t_fg_h_dg_n1_p_va;
	float og_h_dg_n1_p_va;
	float fg_h_dg_n1_p_va;
	float gapz_n1_va0;
	float gapz_n1_va1;
	float fgcp1va;
	float ogcp1va;



#if 0
	fprintf( stderr, "eff in SA+++align\n" );
	for( i=0; i<icyc; i++ ) fprintf( stderr, "eff1[%d] = %f\n", i, eff1[i] );
#endif
	if( orlgth1 == 0 )
	{
		mseq1 = AllocateCharMtx( njob, 0 );
		mseq2 = AllocateCharMtx( njob, 0 );
	}


	lgth1 = strlen( seq1[0] );
	lgth2 = strlen( seq2[0] );

	if( lgth1 > orlgth1 || lgth2 > orlgth2 )
	{
		int ll1, ll2;

		if( orlgth1 > 0 && orlgth2 > 0 )
		{
			FreeFloatVec( w1 );
			FreeFloatVec( w2 );
			FreeFloatVec( match );
			FreeFloatVec( initverticalw );
			FreeFloatVec( lastverticalw );

			FreeFloatVec( m );
			FreeIntVec( mp );

			FreeCharMtx( mseq );

			FreeFloatVec( digf1 );
			FreeFloatVec( digf2 );
			FreeFloatVec( diaf1 );
			FreeFloatVec( diaf2 );
			FreeFloatVec( gapz1 );
			FreeFloatVec( gapz2 );
			FreeFloatVec( gapf1 );
			FreeFloatVec( gapf2 );
			FreeFloatVec( ogcp1g );
			FreeFloatVec( ogcp2g );
			FreeFloatVec( fgcp1g );
			FreeFloatVec( fgcp2g );
			FreeFloatVec( og_h_dg_n1_p );
			FreeFloatVec( og_h_dg_n2_p );
			FreeFloatVec( fg_h_dg_n1_p );
			FreeFloatVec( fg_h_dg_n2_p );
			FreeFloatVec( og_t_fg_h_dg_n1_p );
			FreeFloatVec( og_t_fg_h_dg_n2_p );
			FreeFloatVec( fg_t_og_h_dg_n1_p );
			FreeFloatVec( fg_t_og_h_dg_n2_p );
			FreeFloatVec( gapz_n1 );
			FreeFloatVec( gapz_n2 );

			FreeFloatMtx( cpmx1 );
			FreeFloatMtx( cpmx2 );

			FreeFloatMtx( floatwork );
			FreeIntMtx( intwork );
		}

		ll1 = MAX( (int)(1.3*lgth1), orlgth1 ) + 100;
		ll2 = MAX( (int)(1.3*lgth2), orlgth2 ) + 100;

#if DEBUG
		fprintf( stderr, "\ntrying to allocate (%d+%d)xn matrices ... ", ll1, ll2 );
#endif

		w1 = AllocateFloatVec( ll2+2 );
		w2 = AllocateFloatVec( ll2+2 );
		match = AllocateFloatVec( ll2+2 );

		initverticalw = AllocateFloatVec( ll1+2 );
		lastverticalw = AllocateFloatVec( ll1+2 );

		m = AllocateFloatVec( ll2+2 );
		mp = AllocateIntVec( ll2+2 );

		mseq = AllocateCharMtx( njob, ll1+ll2 );

		digf1 = AllocateFloatVec( ll1+2 );
		digf2 = AllocateFloatVec( ll2+2 );
		diaf1 = AllocateFloatVec( ll1+2 );
		diaf2 = AllocateFloatVec( ll2+2 );
		gapz1 = AllocateFloatVec( ll1+2 );
		gapz2 = AllocateFloatVec( ll2+2 );
		gapf1 = AllocateFloatVec( ll1+2 );
		gapf2 = AllocateFloatVec( ll2+2 );
		ogcp1g = AllocateFloatVec( ll1+2 );
		ogcp2g = AllocateFloatVec( ll2+2 );
		fgcp1g = AllocateFloatVec( ll1+2 );
		fgcp2g = AllocateFloatVec( ll2+2 );
		og_h_dg_n1_p = AllocateFloatVec( ll1 + 2 );
		og_h_dg_n2_p = AllocateFloatVec( ll2 + 2 );
		fg_h_dg_n1_p = AllocateFloatVec( ll1 + 2 );
		fg_h_dg_n2_p = AllocateFloatVec( ll2 + 2 );
		og_t_fg_h_dg_n1_p = AllocateFloatVec( ll1 + 2 );
		og_t_fg_h_dg_n2_p = AllocateFloatVec( ll2 + 2 );
		fg_t_og_h_dg_n1_p = AllocateFloatVec( ll1 + 2 );
		fg_t_og_h_dg_n2_p = AllocateFloatVec( ll2 + 2 );
		gapz_n1 = AllocateFloatVec( ll1+2 );
		gapz_n2 = AllocateFloatVec( ll2+2 );

		cpmx1 = AllocateFloatMtx( 26, ll1+2 );
		cpmx2 = AllocateFloatMtx( 26, ll2+2 );

#if FASTMATCHCALC
		floatwork = AllocateFloatMtx( MAX( ll1, ll2 )+2, 26 ); 
		intwork = AllocateIntMtx( MAX( ll1, ll2 )+2, 26 ); 
#else
		floatwork = AllocateFloatMtx( 26, MAX( ll1, ll2 )+2 ); 
		intwork = AllocateIntMtx( 26, MAX( ll1, ll2 )+2 ); 
#endif

#if DEBUG
		fprintf( stderr, "succeeded\n" );
#endif

		orlgth1 = ll1 - 100;
		orlgth2 = ll2 - 100;
	}


	for( i=0; i<icyc; i++ ) mseq1[i] = mseq[i];
	for( j=0; j<jcyc; j++ ) mseq2[j] = mseq[icyc+j];


	if( orlgth1 > commonAlloc1 || orlgth2 > commonAlloc2 )
	{
		int ll1, ll2;

		if( commonAlloc1 && commonAlloc2 )
		{
			FreeIntMtx( commonIP );
		}

		ll1 = MAX( orlgth1, commonAlloc1 );
		ll2 = MAX( orlgth2, commonAlloc2 );

#if DEBUG
		fprintf( stderr, "\n\ntrying to allocate %dx%d matrices ... ", ll1+1, ll2+1 );
#endif

		commonIP = AllocateIntMtx( ll1+10, ll2+10 );

#if DEBUG
		fprintf( stderr, "succeeded\n\n" );
#endif

		commonAlloc1 = ll1;
		commonAlloc2 = ll2;
	}
	ijp = commonIP;

	cpmx_calc_new( seq1, cpmx1, eff1, lgth1, icyc );
	cpmx_calc_new( seq2, cpmx2, eff2, lgth2, jcyc );

	if( sgap1 )
	{
		new_OpeningGapCount_zure( ogcp1g, icyc, seq1, eff1, lgth1, sgap1, egap1 );
		new_OpeningGapCount_zure( ogcp2g, jcyc, seq2, eff2, lgth2, sgap2, egap2 );
		new_FinalGapCount_zure( fgcp1g, icyc, seq1, eff1, lgth1, sgap1, egap1 );
		new_FinalGapCount_zure( fgcp2g, jcyc, seq2, eff2, lgth2, sgap2, egap2 );
		getdigapfreq_part( digf1, icyc, seq1, eff1, lgth1, sgap1, egap1 );
		getdigapfreq_part( digf2, jcyc, seq2, eff2, lgth2, sgap2, egap2 );
		getdiaminofreq_part( diaf1, icyc, seq1, eff1, lgth1, sgap1, egap1 );
		getdiaminofreq_part( diaf2, jcyc, seq2, eff2, lgth2, sgap2, egap2 );
		getgapfreq( gapf1, icyc, seq1, eff1, lgth1 );
		getgapfreq( gapf2, jcyc, seq2, eff2, lgth2 );
		getgapfreq_zure_part( gapz1, icyc, seq1, eff1, lgth1, sgap1 );
		getgapfreq_zure_part( gapz2, jcyc, seq2, eff2, lgth2, sgap1 );
	}
	else
	{
		st_OpeningGapCount( ogcp1g, icyc, seq1, eff1, lgth1 );
		st_OpeningGapCount( ogcp2g, jcyc, seq2, eff2, lgth2 );
		st_FinalGapCount_zure( fgcp1g, icyc, seq1, eff1, lgth1 );
		st_FinalGapCount_zure( fgcp2g, jcyc, seq2, eff2, lgth2 );
		getdigapfreq_st( digf1, icyc, seq1, eff1, lgth1 );
		getdigapfreq_st( digf2, jcyc, seq2, eff2, lgth2 );
		getdiaminofreq_x( diaf1, icyc, seq1, eff1, lgth1 );
		getdiaminofreq_x( diaf2, jcyc, seq2, eff2, lgth2 );
		getgapfreq( gapf1, icyc, seq1, eff1, lgth1 );
		getgapfreq( gapf2, jcyc, seq2, eff2, lgth2 );
		getgapfreq_zure( gapz1, icyc, seq1, eff1, lgth1 );
		getgapfreq_zure( gapz2, jcyc, seq2, eff2, lgth2 );
	}

#if 1
	lastj = lgth2+2;
	for( i=0; i<lastj; i++ )
	{
		og_h_dg_n2_p[i] = ( 1.0-ogcp2g[i]-digf2[i] ) * fpenalty * 0.5;
		fg_h_dg_n2_p[i] = ( 1.0-fgcp2g[i]-digf2[i] ) * fpenalty * 0.5;
		og_t_fg_h_dg_n2_p[i] = (1.0-ogcp2g[i]+fgcp2g[i]-digf2[i]) * 0.5 * fpenalty;
		fg_t_og_h_dg_n2_p[i] = (1.0-fgcp2g[i]+ogcp2g[i]-digf2[i]) * 0.5 * fpenalty;
		gapz_n2[i] = (1.0-gapz2[i]);
	}
	lastj = lgth1+2;
	for( i=0; i<lastj; i++ )
	{
		og_h_dg_n1_p[i] = ( 1.0-ogcp1g[i]-digf1[i] ) * fpenalty * 0.5;
		fg_h_dg_n1_p[i] = ( 1.0-fgcp1g[i]-digf1[i] ) * fpenalty * 0.5;
		og_t_fg_h_dg_n1_p[i] = (1.0-ogcp1g[i]+fgcp1g[i]-digf1[i]) * 0.5 * fpenalty;
		fg_t_og_h_dg_n1_p[i] = (1.0-fgcp1g[i]+ogcp1g[i]-digf1[i]) * 0.5 * fpenalty;
		gapz_n1[i] = (1.0-gapz1[i]);
	}
#endif

	currentw = w1;
	previousw = w2;


	match_calc( initverticalw, cpmx2, cpmx1, 0, lgth1, floatwork, intwork, 1 );
	if( localhom )
		part_imp_match_out_vead_tate_gapmapQ( initverticalw, gapmap2[0]+start2, lgth1, start1, gapmap1 );


	match_calc( currentw, cpmx1, cpmx2, 0, lgth2, floatwork, intwork, 1 );
	if( localhom )
		part_imp_match_out_vead_gapmapQ( currentw, gapmap1[0]+start1, lgth2, start2, gapmap2 );
#if 0 // -> tbfast.c
	if( localhom )
		imp_match_calc( currentw, icyc, jcyc, lgth1, lgth2, seq1, seq2, eff1, eff2, localhom, 1, 0 );

#endif

	if( outgap == 1 )
	{
		g = 0.0;

		g += ogcp1g[0] * og_h_dg_n2_p[0];

		g += ogcp2g[0] * og_h_dg_n1_p[0];

		g += fgcp1g[0] * fg_h_dg_n2_p[0];

		g += fgcp2g[0] * fg_h_dg_n1_p[0];

		initverticalw[0] += g;
		currentw[0] += g;

		for( i=1; i<lgth1+1; i++ )
		{
			tmppenal = gapz_n2[0]*og_t_fg_h_dg_n1_p[0];
			initverticalw[i] += tmppenal;

			tmppenal = gapz_n2[1]*fg_t_og_h_dg_n1_p[i];
			initverticalw[i] += tmppenal;

		}
		for( j=1; j<lgth2+1; j++ )
		{
			tmppenal = gapz_n1[0]*og_t_fg_h_dg_n2_p[0];
			currentw[j] += tmppenal;

			tmppenal = gapz_n1[1]*fg_t_og_h_dg_n2_p[j];
			currentw[j] += tmppenal;
		}
	}
#if OUTGAP0TRY
	else
	{
		for( j=1; j<lgth2+1; j++ )
				currentw[j] -= offset * j / 2.0;
		for( i=1; i<lgth1+1; i++ )
			initverticalw[i] -= offset * i / 2.0;
	}
#endif

	m[0] = 0.0; // iranai
	for( j=1; j<lgth2+1; ++j ) 
	{
		mp[j] = 0;
		m[j] = currentw[j-1] + 10000 * fpenalty; //iinoka?
	}
	if( lgth2 == 0 )
		lastverticalw[0] = 0.0; // Falign kara yobaretatoki kounarukanousei ari
	else
		lastverticalw[0] = currentw[lgth2-1];

	if( outgap ) lasti = lgth1+1; else lasti = lgth1;
	lastj = lgth2+1;

#if XXXXXXX
fprintf( stderr, "currentw = \n" );
for( i=0; i<lgth1+1; i++ )
{
	fprintf( stderr, "%5.2f ", currentw[i] );
}
fprintf( stderr, "\n" );
fprintf( stderr, "initverticalw = \n" );
for( i=0; i<lgth2+1; i++ )
{
	fprintf( stderr, "%5.2f ", initverticalw[i] );
}
fprintf( stderr, "\n" );
fprintf( stderr, "fcgp\n" );
for( i=0; i<lgth1; i++ ) 
	fprintf( stderr, "fgcp1[%d]=%f\n", i, ogcp1[i] );
for( i=0; i<lgth2; i++ ) 
	fprintf( stderr, "fgcp2[%d]=%f\n", i, ogcp2[i] );
#endif

	for( i=1; i<lasti; i++ )
	{
		wtmp = previousw; 
		previousw = currentw;
		currentw = wtmp;

		previousw[0] = initverticalw[i-1];

		match_calc( currentw, cpmx1, cpmx2, i, lgth2, floatwork, intwork, 0 );
#if XXXXXXX
fprintf( stderr, "\n" );
fprintf( stderr, "i=%d\n", i );
fprintf( stderr, "currentw = \n" );
for( j=0; j<lgth2; j++ )
{
	fprintf( stderr, "%5.2f ", currentw[j] );
}
fprintf( stderr, "\n" );
#endif
		if( localhom )
		{
//			fprintf( stderr, "Calling imp_match_calc (o) lgth = %d, i = %d\n", lgth1, i );
//			imp_match_out_vead( currentw, i, lgth2 );
			part_imp_match_out_vead_gapmapQ( currentw, gapmap1[i]+start1, lgth2, start2, gapmap2 );
		}
#if XXXXXXX
fprintf( stderr, "\n" );
fprintf( stderr, "i=%d\n", i );
fprintf( stderr, "currentw = \n" );
for( j=0; j<lgth2; j++ )
{
	fprintf( stderr, "%5.2f ", currentw[j] );
}
fprintf( stderr, "\n" );
#endif
		currentw[0] = initverticalw[i];

		mpi = 0;
		mi = previousw[0] + 10000 * fpenalty;

		ijppt = ijp[i] + 1;
		mjpt = m + 1;
		prept = previousw;
		curpt = currentw + 1;
		mpjpt = mp + 1;
		fg_t_og_h_dg_n2_p_pt = fg_t_og_h_dg_n2_p + 1;
		og_t_fg_h_dg_n2_p_pt = og_t_fg_h_dg_n2_p + 1;
		og_h_dg_n2_p_pt = og_h_dg_n2_p + 1;
		fg_h_dg_n2_p_pt = fg_h_dg_n2_p + 1;
		gapz_n2_pt0 = gapz_n2 + 1;
		gapz_n2_pt1 = gapz_n2 + 2;
		fgcp2pt = fgcp2g + 1;
		ogcp2pt = ogcp2g + 1;

		fg_t_og_h_dg_n1_p_va = fg_t_og_h_dg_n1_p[i];
		og_t_fg_h_dg_n1_p_va = og_t_fg_h_dg_n1_p[i];
		og_h_dg_n1_p_va = og_h_dg_n1_p[i];
		fg_h_dg_n1_p_va = fg_h_dg_n1_p[i];
		gapz_n1_va0 = gapz_n1[i];
		gapz_n1_va1 = gapz_n1[i+1];
		fgcp1va = fgcp1g[i];
		ogcp1va = ogcp1g[i];

		for( j=1; j<lastj; j++ )
		{
			wm = *prept;

			g = ogcp1va * *og_h_dg_n2_p_pt;
			wm += g;

			g = *ogcp2pt * og_h_dg_n1_p_va;
			wm += g;

			g = fgcp1va * *fg_h_dg_n2_p_pt;
			wm += g;

			g = *fgcp2pt * fg_h_dg_n1_p_va;
			wm += g;

			*ijppt = 0;


#if 0
			fprintf( stderr, "%5.0f->", wm );
#endif
			tmppenal = gapz_n1_va1 * *fg_t_og_h_dg_n2_p_pt;
#if 0
			fprintf( stderr, "%5.0f?", g );
#endif
			if( (g=mi+tmppenal) > wm )
			{
				wm = g;
				*ijppt = -( j - mpi );
			}

			tmppenal = gapz_n1_va0 * *og_t_fg_h_dg_n2_p_pt;
			if( (g=*prept+tmppenal) >= mi )
			{
				mi = g;
				mpi = j-1;
			}
#if USE_PENALTY_EX
			mi += fpenalty_ex;
#endif

			tmppenal = *gapz_n2_pt1 * fg_t_og_h_dg_n1_p_va;
#if 0 
			fprintf( stderr, "%5.0f?", g );
#endif
			if( (g=*mjpt+tmppenal) > wm )
			{
				wm = g;
				*ijppt = +( i - *mpjpt );
			}

			tmppenal = *gapz_n2_pt0 * og_t_fg_h_dg_n1_p_va;
			if( (g=*prept+tmppenal) >= *mjpt )
			{
				*mjpt = g;
				*mpjpt = i-1;
			}
#if USE_PENALTY_EX
			m[j] += fpenalty_ex;
#endif

#if 0
			fprintf( stderr, "%5.0f ", wm );
#endif
			*curpt++ += wm;
			ijppt++;
			mjpt++;
			prept++;
			mpjpt++;
			fg_t_og_h_dg_n2_p_pt++;
			og_t_fg_h_dg_n2_p_pt++;
			og_h_dg_n2_p_pt++;
			fg_h_dg_n2_p_pt++;
			gapz_n2_pt0++;
			gapz_n2_pt1++;
			fgcp2pt++;
			ogcp2pt++;
		}
		lastverticalw[i] = currentw[lgth2-1];
	}

#if OUTGAP0TRY
	if( !outgap )
	{
		for( j=1; j<lgth2+1; j++ )
			currentw[j] -= offset * ( lgth2 - j ) / 2.0;
		for( i=1; i<lgth1+1; i++ )
			lastverticalw[i] -= offset * ( lgth1 - i  / 2.0);
	}
#endif
		
	/*
	fprintf( stderr, "\n" );
	for( i=0; i<icyc; i++ ) fprintf( stderr,"%s\n", seq1[i] );
	fprintf( stderr, "#####\n" );
	for( j=0; j<jcyc; j++ ) fprintf( stderr,"%s\n", seq2[j] );
	fprintf( stderr, "====>" );
	for( i=0; i<icyc; i++ ) strcpy( mseq1[i], seq1[i] );
	for( j=0; j<jcyc; j++ ) strcpy( mseq2[j], seq2[j] );
	*/
	if( localhom )
	{
		Atracking_localhom( impmatch, currentw, lastverticalw, seq1, seq2, mseq1, mseq2, cpmx1, cpmx2, ijp, icyc, jcyc, start1, end1, start2, end2, gapmap1, gapmap2 );
	}
	else
		Atracking( currentw, lastverticalw, seq1, seq2, mseq1, mseq2, cpmx1, cpmx2, ijp, icyc, jcyc );

//	fprintf( stderr, "### impmatch = %f\n", *impmatch );

	resultlen = strlen( mseq1[0] );
	if( alloclen < resultlen || resultlen > N )
	{
		fprintf( stderr, "alloclen=%d, resultlen=%d, N=%d\n", alloclen, resultlen, N );
		ErrorExit( "LENGTH OVER!\n" );
	}


	for( i=0; i<icyc; i++ ) strcpy( seq1[i], mseq1[i] );
	for( j=0; j<jcyc; j++ ) strcpy( seq2[j], mseq2[j] );
	/*
	fprintf( stderr, "\n" );
	for( i=0; i<icyc; i++ ) fprintf( stderr, "%s\n", mseq1[i] );
	fprintf( stderr, "#####\n" );
	for( j=0; j<jcyc; j++ ) fprintf( stderr, "%s\n", mseq2[j] );
	*/

//	fprintf( stderr, "wm = %f\n", wm );


	return( wm );
}

