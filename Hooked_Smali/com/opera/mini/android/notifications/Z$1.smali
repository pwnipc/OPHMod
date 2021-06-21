.class final Lcom/opera/mini/android/notifications/Z$1;
.super Ljava/lang/Thread;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/notifications/Z;
.end annotation


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/Z;


# direct methods
.method constructor <init>(Lcom/opera/mini/android/notifications/Z;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/opera/mini/android/notifications/Z$1;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    :try_start_2
    iget-object v2, p0, Lcom/opera/mini/android/notifications/Z$1;->Code:Lcom/opera/mini/android/notifications/Z;

    iget-object v2, v2, Lcom/opera/mini/android/notifications/Z;->Code:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/sql/Date;

    iget-object v4, p0, Lcom/opera/mini/android/notifications/Z$1;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-virtual {v4}, Lcom/opera/mini/android/notifications/Z;->J()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://apps.opera.com/api/counts.php?ua="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ldb;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Lcom/opera/mini/android/notifications/B;->Code(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_7e

    .line 112
    const-string v3, "free"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_67

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 115
    :cond_67
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MobileStoreNotification: error parsing \'free\'"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6f} :catch_6f

    .line 125
    :catch_6f
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobileStoreNotification.tryCheckForNewApps exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_7e
    :goto_7e
    return-void

    .line 117
    :cond_7f
    const/4 v3, 0x0

    :try_start_80
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9b

    .line 119
    :goto_92
    if-eqz v0, :cond_7e

    .line 121
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z$1;->Code:Lcom/opera/mini/android/notifications/Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/Z;->Code(Lcom/opera/mini/android/notifications/Z;Z)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9a} :catch_6f

    goto :goto_7e

    :cond_9b
    move v0, v1

    .line 117
    goto :goto_92
.end method
