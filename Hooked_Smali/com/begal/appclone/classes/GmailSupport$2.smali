.class Lcom/begal/appclone/classes/GmailSupport$2;
.super Lcom/begal/appclone/classes/util/IPackageManagerHook;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/GmailSupport;->installPackageManagerHook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/GmailSupport;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/GmailSupport;

    .line 145
    iput-object p1, p0, Lcom/begal/appclone/classes/GmailSupport$2;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    iput-object p2, p0, Lcom/begal/appclone/classes/GmailSupport$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/begal/appclone/classes/util/IPackageManagerHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .param p1, "originalPackageManager"    # Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/begal/appclone/classes/GmailSupport$2$1;

    invoke-direct {v0, p0, p1}, Lcom/begal/appclone/classes/GmailSupport$2$1;-><init>(Lcom/begal/appclone/classes/GmailSupport$2;Ljava/lang/Object;)V

    return-object v0
.end method
