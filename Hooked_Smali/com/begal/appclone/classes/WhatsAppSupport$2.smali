.class Lcom/begal/appclone/classes/WhatsAppSupport$2;
.super Ljava/lang/Object;
.source "WhatsAppSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/WhatsAppSupport;->showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/WhatsAppSupport;

    .line 92
    iput-object p1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$2;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    iput-object p2, p0, Lcom/begal/appclone/classes/WhatsAppSupport$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport$2;->val$context:Landroid/content/Context;

    const-string v1, "WhatsApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The original WhatsApp app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/WhatsAppSupport$2;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    .line 97
    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$100(Lcom/begal/appclone/classes/WhatsAppSupport;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be installed during the registration process."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->showDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 100
    goto :goto_2c

    .line 98
    :catch_24
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method
