.class final Lcom/opera/mini/android/J;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private Code:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "*"

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opera/mini/android/J;->Code:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_13
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 149
    iget-object v3, p0, Lcom/opera/mini/android/J;->Code:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_13

    .line 151
    :cond_25
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    .line 156
    const/4 v0, -0x1

    move v3, v2

    move v4, v1

    .line 158
    :goto_5
    if-eqz v4, :cond_1f

    iget-object v5, p0, Lcom/opera/mini/android/J;->Code:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1f

    .line 160
    iget-object v4, p0, Lcom/opera/mini/android/J;->Code:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v0, :cond_1d

    move v0, v1

    .line 158
    :goto_17
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v0

    move v0, v6

    goto :goto_5

    :cond_1d
    move v0, v2

    .line 160
    goto :goto_17

    .line 163
    :cond_1f
    return v4
.end method
