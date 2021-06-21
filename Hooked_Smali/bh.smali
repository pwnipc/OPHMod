.class final Lbh;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field B:I

.field C:I

.field Code:[I

.field I:[Lbu;

.field J:I

.field Z:[Lbu;

.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x100

    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    const/16 v0, 0x600

    new-array v0, v0, [I

    iput-object v0, p0, Lbh;->Code:[I

    .line 1912
    new-array v0, v1, [Lbu;

    iput-object v0, p0, Lbh;->I:[Lbu;

    .line 1913
    new-array v0, v1, [Lbu;

    iput-object v0, p0, Lbh;->Z:[Lbu;

    return-void
.end method

.method static synthetic Code(Lbh;)I
    .registers 2

    .prologue
    .line 1902
    iget v0, p0, Lbh;->b:I

    return v0
.end method

.method private Code([Lbu;ILbu;)Z
    .registers 6

    .prologue
    .line 2013
    aget-object v0, p1, p2

    .line 2014
    if-eqz v0, :cond_11

    .line 2016
    iget v1, p0, Lbh;->b:I

    invoke-virtual {v0}, Lbu;->J()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lbh;->b:I

    .line 2017
    const/4 v0, 0x0

    aput-object v0, p1, p2

    .line 2019
    :cond_11
    invoke-virtual {p3}, Lbu;->J()I

    move-result v0

    .line 2020
    invoke-virtual {p0, v0}, Lbh;->I(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2022
    const/4 v0, 0x0

    .line 2026
    :goto_1c
    return v0

    .line 2024
    :cond_1d
    aput-object p3, p1, p2

    .line 2025
    iget v1, p0, Lbh;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lbh;->b:I

    .line 2026
    const/4 v0, 0x1

    goto :goto_1c
.end method


# virtual methods
.method final Code(I)V
    .registers 2

    .prologue
    .line 1925
    iput p1, p0, Lbh;->a:I

    .line 1927
    return-void
.end method

.method final Code(II)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1931
    if-gtz p1, :cond_8

    .line 1934
    iput v0, p0, Lbh;->B:I

    .line 1935
    iput v0, p0, Lbh;->C:I

    .line 1943
    :goto_7
    return-void

    .line 1939
    :cond_8
    const/4 v0, 0x1

    sub-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbh;->B:I

    .line 1940
    iput p2, p0, Lbh;->C:I

    goto :goto_7
.end method

.method final Code(IZZ)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1964
    if-eqz p2, :cond_17

    .line 1966
    iget-object v0, p0, Lbh;->Z:[Lbu;

    aget-object v0, v0, p1

    .line 1967
    if-eqz v0, :cond_17

    .line 1969
    iget v1, p0, Lbh;->b:I

    invoke-virtual {v0}, Lbu;->J()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lbh;->b:I

    .line 1970
    iget-object v0, p0, Lbh;->Z:[Lbu;

    aput-object v2, v0, p1

    .line 1973
    :cond_17
    if-eqz p3, :cond_2d

    .line 1975
    iget-object v0, p0, Lbh;->I:[Lbu;

    aget-object v0, v0, p1

    .line 1976
    if-eqz v0, :cond_2d

    .line 1978
    iget v1, p0, Lbh;->b:I

    invoke-virtual {v0}, Lbu;->J()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lbh;->b:I

    .line 1979
    iget-object v0, p0, Lbh;->I:[Lbu;

    aput-object v2, v0, p1

    .line 1982
    :cond_2d
    return-void
.end method

.method final Code(IILbh;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2039
    invoke-virtual {p0, p1}, Lbh;->Z(I)I

    move-result v1

    .line 2040
    invoke-virtual {p0, v1, p1}, Lbh;->I(II)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2042
    iget-object v2, p0, Lbh;->I:[Lbu;

    aget-object v2, v2, v1

    .line 2043
    if-eqz v2, :cond_2c

    .line 2045
    invoke-virtual {v2}, Lbu;->J()I

    move-result v3

    .line 2046
    iget-object v4, p3, Lbh;->I:[Lbu;

    aput-object v2, v4, p4

    .line 2047
    iget v2, p3, Lbh;->b:I

    add-int/2addr v2, v3

    iput v2, p3, Lbh;->b:I

    .line 2048
    iget v2, p3, Lbh;->B:I

    if-lez v2, :cond_2c

    .line 2051
    iget v2, p3, Lbh;->B:I

    add-int/2addr v2, v3

    iput v2, p3, Lbh;->B:I

    .line 2052
    iget v2, p3, Lbh;->C:I

    sub-int/2addr v2, v3

    iput v2, p3, Lbh;->C:I

    .line 2056
    :cond_2c
    iget v2, p0, Lbh;->a:I

    if-ne p2, v2, :cond_51

    .line 2058
    iget-object v2, p0, Lbh;->Z:[Lbu;

    aget-object v2, v2, v1

    .line 2059
    if-eqz v2, :cond_51

    .line 2061
    invoke-virtual {v2}, Lbu;->J()I

    move-result v3

    .line 2062
    iget-object v4, p3, Lbh;->Z:[Lbu;

    aput-object v2, v4, p4

    .line 2063
    iget v2, p3, Lbh;->b:I

    add-int/2addr v2, v3

    iput v2, p3, Lbh;->b:I

    .line 2064
    iget v2, p3, Lbh;->B:I

    if-lez v2, :cond_51

    .line 2067
    iget v2, p3, Lbh;->B:I

    add-int/2addr v2, v3

    iput v2, p3, Lbh;->B:I

    .line 2068
    iget v2, p3, Lbh;->C:I

    sub-int/2addr v2, v3

    iput v2, p3, Lbh;->C:I

    .line 2073
    :cond_51
    iget v2, p3, Lbh;->C:I

    if-gez v2, :cond_57

    .line 2075
    iput v0, p3, Lbh;->C:I

    .line 2079
    :cond_57
    iget-object v0, p3, Lbh;->Code:[I

    mul-int/lit8 v2, p4, 0x6

    add-int/lit8 v2, v2, 0x2

    aget v3, v0, v2

    iget-object v4, p0, Lbh;->Code:[I

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    aget v1, v4, v1

    const/high16 v4, -0x80000000

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 2080
    const/4 v0, 0x1

    .line 2082
    :cond_6e
    return v0
.end method

.method final Code(IZLbu;Lbu;)Z
    .registers 7

    .prologue
    .line 1990
    if-eqz p2, :cond_e

    .line 1992
    iget-object v1, p0, Lbh;->I:[Lbu;

    .line 1993
    iget-object v0, p0, Lbh;->Z:[Lbu;

    .line 2000
    :goto_6
    invoke-direct {p0, v1, p1, p3}, Lbh;->Code([Lbu;ILbu;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2002
    const/4 v0, 0x0

    .line 2008
    :goto_d
    return v0

    .line 1997
    :cond_e
    iget-object v1, p0, Lbh;->Z:[Lbu;

    .line 1998
    iget-object v0, p0, Lbh;->I:[Lbu;

    goto :goto_6

    .line 2004
    :cond_13
    if-eqz p4, :cond_18

    .line 2006
    invoke-direct {p0, v0, p1, p4}, Lbh;->Code([Lbu;ILbu;)Z

    .line 2008
    :cond_18
    const/4 v0, 0x1

    goto :goto_d
.end method

.method final I(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1951
    iget v1, p0, Lbh;->B:I

    if-nez v1, :cond_6

    .line 1955
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lbh;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lbh;->B:I

    if-lt v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method final I(II)Z
    .registers 5

    .prologue
    .line 2103
    iget v0, p0, Lbh;->J:I

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lbh;->Code:[I

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    if-ne v0, p2, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final Z(I)I
    .registers 5

    .prologue
    .line 2094
    iget-object v0, p0, Lbh;->Code:[I

    iget v1, p0, Lbh;->J:I

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Ldb;->Code([IIII)I

    move-result v0

    return v0
.end method
