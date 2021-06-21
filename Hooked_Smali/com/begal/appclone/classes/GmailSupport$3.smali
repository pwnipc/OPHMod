.class Lcom/begal/appclone/classes/GmailSupport$3;
.super Landroid/content/ContextWrapper;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/GmailSupport;->installContextHook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/GmailSupport;

.field final synthetic val$myPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/GmailSupport;
    .param p2, "x0"    # Landroid/content/Context;

    .line 267
    iput-object p1, p0, Lcom/begal/appclone/classes/GmailSupport$3;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    iput-object p3, p0, Lcom/begal/appclone/classes/GmailSupport$3;->val$myPackageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 271
    # getter for: Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPackageContext; packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/begal/appclone/classes/GmailSupport$3;->val$myPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 274
    # getter for: Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPackageContext; replacing remote context; packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lcom/begal/appclone/classes/GmailSupport$3$1;

    const-string v1, "com.google.android.gms"

    invoke-super {p0, v1, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/begal/appclone/classes/GmailSupport$3$1;-><init>(Lcom/begal/appclone/classes/GmailSupport$3;Landroid/content/Context;)V

    return-object v0

    .line 303
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
