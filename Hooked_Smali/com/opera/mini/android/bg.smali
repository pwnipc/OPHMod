.class public final Lcom/opera/mini/android/bg;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/opera/mini/android/bg;->Code:Landroid/content/Context;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/opera/mini/android/bg;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 75
    if-nez p1, :cond_3

    .line 81
    :goto_2
    return-void

    .line 78
    :cond_3
    new-instance v0, Lcom/opera/mini/android/bi;

    iget-object v1, p0, Lcom/opera/mini/android/bg;->Code:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/opera/mini/android/bi;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/opera/mini/android/bg;->Code:Landroid/content/Context;

    invoke-static {v0}, Lcom/opera/mini/android/bf;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/bf;->Code(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/opera/mini/android/bf;->I(Ljava/lang/String;)V

    goto :goto_2
.end method
