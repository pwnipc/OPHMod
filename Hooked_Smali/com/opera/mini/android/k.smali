.class public Lcom/opera/mini/android/k;
.super Lbu;
.source "Source"


# instance fields
.field private I:J

.field private Z:Lbr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 206
    invoke-static {}, Lcom/opera/mini/android/k;->C()V

    .line 207
    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 121
    invoke-direct {p0}, Lbu;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/k;->Code(II)V

    .line 123
    return-void
.end method

.method private constructor <init>(Lbu;IIIIIIIIIIIZ)V
    .registers 15

    .prologue
    .line 112
    invoke-direct {p0}, Lbu;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    .line 113
    invoke-direct/range {p0 .. p13}, Lcom/opera/mini/android/k;->Code(Lbu;IIIIIIIIIIIZ)V

    .line 118
    return-void
.end method

.method constructor <init>([IIIIII)V
    .registers 15

    .prologue
    .line 101
    invoke-direct {p0}, Lbu;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    .line 102
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/opera/mini/android/k;->Code([IIIIIIZ)V

    .line 104
    return-void
.end method

.method constructor <init>([IIIZ)V
    .registers 13

    .prologue
    .line 93
    invoke-direct {p0}, Lbu;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    .line 94
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/opera/mini/android/k;->Code([IIIIIIZ)V

    .line 97
    return-void
.end method

.method private static native C()V
.end method

.method private native Code(II)V
.end method

.method private native Code(Lbu;IIIIIIIIIIIZ)V
.end method

.method private native Code([B)V
.end method

.method private native Code([IIIIIIZ)V
.end method


# virtual methods
.method public B()Lbr;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    if-nez v0, :cond_a

    .line 160
    invoke-static {p0}, Lcom/opera/mini/android/a;->Code(Lcom/opera/mini/android/k;)Lcom/opera/mini/android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/opera/mini/android/k;->Z:Lbr;

    return-object v0
.end method

.method public final Code(IIIIIIIIIIIZ)Lbu;
    .registers 27

    .prologue
    .line 192
    new-instance v0, Lcom/opera/mini/android/k;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/opera/mini/android/k;-><init>(Lbu;IIIIIIIIIIIZ)V

    return-object v0
.end method

.method public native I()I
.end method

.method public native J()I
.end method

.method public native Z()I
.end method

.method protected native finalize()V
.end method
