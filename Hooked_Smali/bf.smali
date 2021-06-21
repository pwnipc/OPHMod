.class public final Lbf;
.super Ljava/io/ByteArrayOutputStream;
.source "Source"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method final Code(I)V
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lbf;->count:I

    .line 27
    return-void
.end method

.method public final Code()[B
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lbf;->buf:[B

    return-object v0
.end method
