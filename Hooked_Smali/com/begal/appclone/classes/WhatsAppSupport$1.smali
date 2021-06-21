.class Lcom/begal/appclone/classes/WhatsAppSupport$1;
.super Landroid/content/ContextWrapper;
.source "WhatsAppSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/WhatsAppSupport;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/WhatsAppSupport;
    .param p2, "x0"    # Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    iput-object p3, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPackageCodePath()Ljava/lang/String;
    .registers 6

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/begal/appclone/classes/WhatsAppSupport$1;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->mOriginalPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$000(Lcom/begal/appclone/classes/WhatsAppSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 64
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;
    invoke-static {v1}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$100(Lcom/begal/appclone/classes/WhatsAppSupport;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 65
    iget-object v1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    iget-object v2, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    # invokes: Lcom/begal/appclone/classes/WhatsAppSupport;->showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$200(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;)V

    .line 68
    :cond_24
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 69
    .local v1, "publicSourceDir":Ljava/lang/String;
    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageCodePath; publicSourceDir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_40} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 70
    return-object v1

    .line 74
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "publicSourceDir":Ljava/lang/String;
    :catch_41
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5a

    .line 71
    :catch_4a
    move-exception v0

    .line 72
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    iget-object v1, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->this$0:Lcom/begal/appclone/classes/WhatsAppSupport;

    iget-object v2, p0, Lcom/begal/appclone/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    # invokes: Lcom/begal/appclone/classes/WhatsAppSupport;->showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/begal/appclone/classes/WhatsAppSupport;->access$200(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;)V

    .line 76
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 78
    :goto_5a
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
