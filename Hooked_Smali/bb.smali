.class public final Lbb;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Landroid/text/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/text/ClipboardManager;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbb;->Code:Landroid/text/ClipboardManager;

    .line 14
    return-void
.end method


# virtual methods
.method public final Code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lbb;->Code:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 18
    iget-object v0, p0, Lbb;->Code:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method

.method public final I()Z
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lbb;->Code:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method
