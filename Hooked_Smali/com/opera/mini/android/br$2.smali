.class final Lcom/opera/mini/android/br$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/br;->Code(Landroid/content/Intent;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Lcom/opera/mini/android/br;->C()Landroid/app/AlertDialog;

    .line 127
    return-void
.end method
