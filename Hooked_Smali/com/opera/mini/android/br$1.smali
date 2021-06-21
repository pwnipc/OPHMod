.class final Lcom/opera/mini/android/br$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/br;->Code(Landroid/content/Intent;)V
.end annotation


# instance fields
.field private synthetic Code:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/opera/mini/android/br$1;->Code:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/opera/mini/android/br$1;->Code:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/opera/mini/android/br;->Code(Ljava/lang/String;)V

    .line 118
    return-void
.end method
