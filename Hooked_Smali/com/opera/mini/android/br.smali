.class public final Lcom/opera/mini/android/br;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Landroid/app/AlertDialog;

.field private static I:Landroid/app/Activity;

.field private static J:Z

.field private static Z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/opera/mini/android/br;->Z:Z

    .line 24
    sput-boolean v0, Lcom/opera/mini/android/br;->J:Z

    return-void
.end method

.method public static B()V
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/opera/mini/android/br;->I:Landroid/app/Activity;

    const v1, 0x22553

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 89
    sget-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 91
    sget-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    .line 94
    :cond_14
    return-void
.end method

.method static synthetic C()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static Code()I
    .registers 1

    .prologue
    .line 33
    const v0, 0x22553

    return v0
.end method

.method public static Code(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/opera/mini/android/br;->I:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public static Code(Landroid/content/Intent;)V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 104
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_1d

    array-length v1, v0

    if-lez v1, :cond_1d

    .line 106
    array-length v1, v0

    if-ne v1, v2, :cond_1e

    .line 108
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/opera/mini/android/br;->I(Ljava/lang/String;)V

    .line 134
    :cond_1d
    :goto_1d
    return-void

    .line 112
    :cond_1e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/opera/mini/android/br;->I:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v2, Lcom/opera/mini/android/br$1;

    invoke-direct {v2, v0}, Lcom/opera/mini/android/br$1;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    .line 122
    new-instance v0, Lcom/opera/mini/android/br$2;

    invoke-direct {v0}, Lcom/opera/mini/android/br$2;-><init>()V

    .line 129
    sget-object v1, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    sget-object v0, Lcom/opera/mini/android/br;->Code:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1d
.end method

.method static synthetic Code(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/opera/mini/android/br;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static Code(Z)V
    .registers 1

    .prologue
    .line 49
    sput-boolean p0, Lcom/opera/mini/android/br;->Z:Z

    .line 50
    return-void
.end method

.method private static I(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 98
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 99
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p0}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 100
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 101
    return-void
.end method

.method public static I()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {}, Lcom/opera/mini/android/br;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 40
    sput-boolean v0, Lcom/opera/mini/android/br;->Z:Z

    .line 41
    sget-object v1, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/MiniView;->performHapticFeedback(I)Z

    .line 42
    const/4 v0, 0x1

    .line 44
    :cond_f
    return v0
.end method

.method public static J()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/opera/mini/android/br;->J:Z

    .line 60
    return-void
.end method

.method public static Z()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/opera/mini/android/br;->Z:Z

    return v0
.end method

.method private static a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 69
    sget-boolean v1, Lcom/opera/mini/android/br;->J:Z

    if-nez v1, :cond_6

    .line 83
    :goto_5
    return v0

    .line 73
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "web_search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :try_start_14
    sget-object v2, Lcom/opera/mini/android/br;->I:Landroid/app/Activity;

    const v3, 0x22553

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1e

    .line 83
    const/4 v0, 0x1

    goto :goto_5

    .line 81
    :catch_1e
    move-exception v1

    goto :goto_5
.end method
