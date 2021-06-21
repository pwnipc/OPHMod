.class Lcom/begal/appclone/classes/NotificationOptions$1;
.super Ljava/lang/Object;
.source "NotificationOptions.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/NotificationOptions;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/NotificationOptions;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 268
    iput-object p1, p0, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    iput-object p2, p0, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/begal/appclone/classes/NotificationOptions$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 32
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 275
    move-object/from16 v3, p3

    const-string v4, "enqueueNotificationWithTag"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3b

    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    .line 276
    # invokes: Lcom/begal/appclone/classes/NotificationOptions;->isAppClonerClassesNotification()Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$000(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4

    if-nez v4, :cond_b3b

    .line 278
    :try_start_1a
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_b32

    .line 281
    const/4 v4, 0x3

    const/4 v5, 0x2

    :try_start_34
    aget-object v6, v3, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_b32

    .line 284
    .local v6, "id":I
    goto :goto_48

    .line 282
    .end local v6    # "id":I
    :catch_3d
    move-exception v0

    move-object v6, v0

    .line 283
    .local v6, "e":Ljava/lang/ClassCastException;
    :try_start_3f
    aget-object v7, v3, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 283
    .end local v6    # "e":Ljava/lang/ClassCastException;
    move v6, v7

    .line 285
    .local v6, "id":I
    :goto_48
    const v7, 0x60a40a2e

    if-eq v6, v7, :cond_b31

    const v7, 0x4530f1

    if-eq v6, v7, :cond_b31

    .line 288
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mBlockAllNotifications:Z
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$200()Z

    move-result v7

    .line 289
    .local v7, "blockAllNotifications":Z
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$300()Z

    move-result v8

    if-eqz v8, :cond_65

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mRunning:Z
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$400(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 290
    const/4 v7, 0x0

    .line 293
    :cond_65
    const/4 v8, 0x0

    if-eqz v7, :cond_72

    .line 294
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "invoke; blocked notification"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_71} :catch_b32

    .line 295
    return-object v8

    .line 300
    :cond_72
    const/4 v9, 0x4

    :try_start_73
    aget-object v10, v3, v9

    check-cast v10, Landroid/app/Notification;
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_73 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_b32

    .line 303
    .local v10, "notification":Landroid/app/Notification;
    goto :goto_7f

    .line 301
    .end local v10    # "notification":Landroid/app/Notification;
    :catch_78
    move-exception v0

    move-object v10, v0

    .line 302
    .local v10, "e":Ljava/lang/ClassCastException;
    :try_start_7a
    aget-object v11, v3, v4

    check-cast v11, Landroid/app/Notification;

    .line 302
    .end local v10    # "e":Ljava/lang/ClassCastException;
    move-object v10, v11

    .line 305
    .local v10, "notification":Landroid/app/Notification;
    :goto_7f
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$500()Ljava/lang/Integer;

    move-result-object v11
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_b32

    if-eqz v11, :cond_ad

    .line 307
    :try_start_85
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$500()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Landroid/app/Notification;->color:I

    .line 308
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invoke; set notification color; notificationColor: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$500()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 308
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ab} :catch_b32

    .line 311
    goto :goto_ad

    .line 310
    :catch_ac
    move-exception v0

    .line 314
    :cond_ad
    :goto_ad
    :try_start_ad
    # invokes: Lcom/begal/appclone/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    invoke-static {v10}, Lcom/begal/appclone/classes/NotificationOptions;->access$600(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v11

    move-object v15, v11

    .line 315
    .local v15, "extras":Landroid/os/Bundle;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invoke; extras: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v11

    .line 318
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v11, "android.title"

    const-string v12, ""

    invoke-virtual {v15, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/16 v11, 0x20

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    const-string v12, "android.title.big"

    const-string v13, ""

    invoke-virtual {v15, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    const-string v12, "android.text"

    invoke-virtual {v15, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    .line 323
    .local v13, "text":Ljava/lang/Object;
    if-eqz v13, :cond_fd

    .line 324
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_fd
    const-string v12, "android.bigText"

    const-string v4, ""

    invoke-virtual {v15, v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    const-string v4, "android.infoText"

    const-string v12, ""

    invoke-virtual {v15, v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    iget-object v4, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 332
    const-string v4, "android.textLines"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 333
    .local v4, "textLines":[Ljava/lang/CharSequence;
    if-eqz v4, :cond_139

    .line 334
    array-length v9, v4

    const/4 v5, 0x0

    :goto_128
    if-ge v5, v9, :cond_139

    aget-object v16, v4, v5

    move-object/from16 v20, v16

    .line 335
    .local v20, "textLine":Ljava/lang/CharSequence;
    move-object/from16 v12, v20

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 336
    .end local v20    # "textLine":Ljava/lang/CharSequence;
    .local v12, "textLine":Ljava/lang/CharSequence;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    .end local v12    # "textLine":Ljava/lang/CharSequence;
    add-int/lit8 v5, v5, 0x1

    goto :goto_128

    .line 340
    :cond_139
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "concatenatedText":Ljava/lang/String;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; concatenatedText: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v9, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/begal/appclone/classes/NotificationOptions;->access$700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a3

    .line 344
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "lowerCaseConcatenatedText":Ljava/lang/String;
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_171
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 346
    .local v12, "notificationFilterString":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_19f

    .line 347
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "invoke; blocked notification; notificationFilterString: "

    .line 347
    .end local v4    # "textLines":[Ljava/lang/CharSequence;
    .local v21, "textLines":[Ljava/lang/CharSequence;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x0

    return-object v4

    .line 351
    .end local v12    # "notificationFilterString":Ljava/lang/String;
    .end local v21    # "textLines":[Ljava/lang/CharSequence;
    .restart local v4    # "textLines":[Ljava/lang/CharSequence;
    :cond_19f
    move-object/from16 v21, v4

    .line 345
    .end local v4    # "textLines":[Ljava/lang/CharSequence;
    .restart local v21    # "textLines":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    goto :goto_171

    .line 354
    .end local v9    # "lowerCaseConcatenatedText":Ljava/lang/String;
    .end local v21    # "textLines":[Ljava/lang/CharSequence;
    .restart local v4    # "textLines":[Ljava/lang/CharSequence;
    :cond_1a3
    move-object/from16 v21, v4

    .line 354
    .end local v4    # "textLines":[Ljava/lang/CharSequence;
    .restart local v21    # "textLines":[Ljava/lang/CharSequence;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_1a7} :catch_b32

    const/16 v8, 0x1a

    const/4 v9, 0x1

    if-lt v4, v8, :cond_1ef

    .line 356
    :try_start_1ac
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/begal/appclone/classes/NotificationOptions;->getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v11, v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$800(Lcom/begal/appclone/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "channelId":Ljava/lang/String;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; channelId: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e5

    .line 359
    const-class v8, Landroid/app/Notification;

    const-string v11, "mChannelId"

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 360
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    invoke-virtual {v8, v10, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const-string v11, "channel_id"

    invoke-virtual {v15, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e5
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_1e5} :catch_1e6
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1e5} :catch_b32

    .line 366
    .end local v4    # "channelId":Ljava/lang/String;
    .end local v8    # "f":Ljava/lang/reflect/Field;
    :cond_1e5
    goto :goto_1ef

    .line 364
    :catch_1e6
    move-exception v0

    move-object v4, v0

    .line 365
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1e8
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1ef
    :goto_1ef
    const/4 v4, 0x0

    .line 370
    .local v4, "quietTime":Z
    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTime:Z
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$900(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v8

    if-eqz v8, :cond_2e7

    .line 372
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 373
    .local v8, "start":Ljava/util/Calendar;
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$1000(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v11

    const/16 v12, 0xb

    invoke-virtual {v8, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 374
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$1100(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v11

    const/16 v9, 0xc

    invoke-virtual {v8, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 375
    const/16 v11, 0xd

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 376
    const/16 v11, 0xe

    invoke-virtual {v8, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 379
    .local v9, "end":Ljava/util/Calendar;
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$1200(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v11

    invoke-virtual {v9, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 380
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$1300(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v11

    const/16 v12, 0xc

    invoke-virtual {v9, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 381
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 382
    const/16 v11, 0xe

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 384
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24b

    .line 385
    const/4 v11, 0x5

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 388
    :cond_24b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 389
    .local v11, "c1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 390
    .local v12, "c2":Ljava/util/Calendar;
    move/from16 v22, v4

    const/4 v4, 0x5

    .line 390
    .end local v4    # "quietTime":Z
    .local v22, "quietTime":Z
    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 391
    .end local v5    # "concatenatedText":Ljava/lang/String;
    .local v23, "concatenatedText":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_268

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_274

    :cond_268
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_276

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_276

    .line 392
    :cond_274
    const/4 v4, 0x1

    .line 392
    .end local v22    # "quietTime":Z
    .restart local v4    # "quietTime":Z
    goto :goto_278

    .line 395
    .end local v4    # "quietTime":Z
    .restart local v22    # "quietTime":Z
    :cond_276
    move/from16 v4, v22

    .line 395
    .end local v22    # "quietTime":Z
    .restart local v4    # "quietTime":Z
    :goto_278
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    move/from16 v24, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 395
    .end local v7    # "blockAllNotifications":Z
    .local v24, "blockAllNotifications":Z
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v13

    const-string v13, "invoke; start: "

    .line 395
    .end local v13    # "text":Ljava/lang/Object;
    .local v25, "text":Ljava/lang/Object;
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", end: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invoke; c1: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", c2: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invoke; quietTime: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v8    # "start":Ljava/util/Calendar;
    .end local v9    # "end":Ljava/util/Calendar;
    .end local v11    # "c1":Ljava/util/Calendar;
    .end local v12    # "c2":Ljava/util/Calendar;
    move/from16 v22, v4

    goto :goto_2ef

    .line 400
    .end local v23    # "concatenatedText":Ljava/lang/String;
    .end local v24    # "blockAllNotifications":Z
    .end local v25    # "text":Ljava/lang/Object;
    .restart local v5    # "concatenatedText":Ljava/lang/String;
    .restart local v7    # "blockAllNotifications":Z
    .restart local v13    # "text":Ljava/lang/Object;
    :cond_2e7
    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v7

    move-object/from16 v25, v13

    .line 400
    .end local v4    # "quietTime":Z
    .end local v5    # "concatenatedText":Ljava/lang/String;
    .end local v7    # "blockAllNotifications":Z
    .end local v13    # "text":Ljava/lang/Object;
    .restart local v22    # "quietTime":Z
    .restart local v23    # "concatenatedText":Ljava/lang/String;
    .restart local v24    # "blockAllNotifications":Z
    .restart local v25    # "text":Ljava/lang/Object;
    :goto_2ef
    const/4 v4, -0x2

    if-eqz v22, :cond_302

    .line 401
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 402
    iput-object v5, v10, Landroid/app/Notification;->vibrate:[J

    .line 403
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/2addr v5, v4

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 404
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 407
    :cond_302
    if-nez v22, :cond_46d

    .line 410
    const-string v5, "DEFAULT"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_325

    .line 411
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 412
    iget v5, v10, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x1

    or-int/2addr v5, v7

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 413
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; sound: default"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_392

    .line 414
    :cond_325
    const-string v5, "SILENCE"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_345

    .line 415
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 416
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/2addr v5, v4

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 417
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; sound: silence"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_392

    .line 418
    :cond_345
    const-string v5, "CUSTOM"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_392

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".com.begal.appclone.classes.DefaultProvider/assets/.notificationSoundFile"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 422
    .local v5, "uri":Landroid/net/Uri;
    iput-object v5, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 423
    iget v7, v10, Landroid/app/Notification;->defaults:I

    and-int/2addr v7, v4

    iput v7, v10, Landroid/app/Notification;->defaults:I

    .line 424
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; sound: custom; uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_392
    :goto_392
    const-string v5, "DEFAULT"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b4

    .line 429
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->vibrate:[J

    .line 430
    iget v5, v10, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x2

    or-int/2addr v5, v7

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 431
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: default"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46d

    .line 432
    :cond_3b4
    const-string v5, "SILENCE"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d6

    .line 433
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->vibrate:[J

    .line 434
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 435
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: silence"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46d

    .line 436
    :cond_3d6
    const-string v5, "VERY_SHORT"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3fc

    .line 437
    const/4 v5, 0x2

    new-array v7, v5, [J

    fill-array-data v7, :array_b42

    iput-object v7, v10, Landroid/app/Notification;->vibrate:[J

    .line 438
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 439
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: very short"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46d

    .line 440
    :cond_3fc
    const-string v5, "SHORT"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_422

    .line 441
    const/4 v5, 0x2

    new-array v7, v5, [J

    fill-array-data v7, :array_b4e

    iput-object v7, v10, Landroid/app/Notification;->vibrate:[J

    .line 442
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 443
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: short"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46d

    .line 444
    :cond_422
    const-string v5, "LONG"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_448

    .line 445
    const/4 v5, 0x2

    new-array v7, v5, [J

    fill-array-data v7, :array_b5a

    iput-object v7, v10, Landroid/app/Notification;->vibrate:[J

    .line 446
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 447
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: long"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46d

    .line 448
    :cond_448
    const-string v5, "VERY_LONG"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46d

    .line 449
    const/4 v5, 0x2

    new-array v7, v5, [J

    fill-array-data v7, :array_b66

    iput-object v7, v10, Landroid/app/Notification;->vibrate:[J

    .line 450
    iget v5, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->defaults:I

    .line 451
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; vibration: very long"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_46d
    :goto_46d
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$1600(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v5

    const/16 v7, 0x3e8

    if-eqz v5, :cond_4e0

    .line 457
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$1700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 458
    .local v5, "runnable":Ljava/lang/Runnable;
    if-eqz v5, :cond_492

    .line 459
    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$1800(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    :cond_492
    move v8, v6

    .line 462
    .local v8, "finalId":I
    new-instance v9, Lcom/begal/appclone/classes/NotificationOptions$1$1;

    invoke-direct {v9, v1, v8}, Lcom/begal/appclone/classes/NotificationOptions$1$1;-><init>(Lcom/begal/appclone/classes/NotificationOptions$1;I)V

    move-object v5, v9

    .line 475
    iget-object v9, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/begal/appclone/classes/NotificationOptions;->access$1800(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object v9

    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I
    invoke-static {v11}, Lcom/begal/appclone/classes/NotificationOptions;->access$1600(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-virtual {v9, v5, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    iget-object v9, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;
    invoke-static {v9}, Lcom/begal/appclone/classes/NotificationOptions;->access$1700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; scheduled timeout; id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", millis: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    .line 478
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I
    invoke-static {v12}, Lcom/begal/appclone/classes/NotificationOptions;->access$1600(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 477
    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "finalId":I
    :cond_4e0
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mHeadsUpNotifications:Z
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$1900(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v5

    if-eqz v5, :cond_50f

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_50f

    .line 482
    const-string v5, "headsup"

    const/4 v8, 0x2

    invoke-virtual {v15, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const/4 v5, 0x1

    iput v5, v10, Landroid/app/Notification;->priority:I

    .line 484
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; headsUpNotifications; notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_50f
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mLocalOnlyNotifications:Z
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2000(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v5

    if-eqz v5, :cond_535

    .line 488
    iget v5, v10, Landroid/app/Notification;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v10, Landroid/app/Notification;->flags:I

    .line 489
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; localOnlyNotifications; notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_535
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNoOngoingNotifications:Z
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2100(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v5

    if-eqz v5, :cond_561

    .line 493
    iget v5, v10, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v10, Landroid/app/Notification;->flags:I

    .line 494
    iget v5, v10, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v10, Landroid/app/Notification;->flags:I

    .line 495
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; noOngoingNotifications; notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_561
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mShowNotificationTime:Z
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2200(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v5
    :try_end_567
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_567} :catch_b32

    if-eqz v5, :cond_597

    .line 500
    :try_start_569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v10, Landroid/app/Notification;->when:J

    .line 501
    const-string v5, "android.showWhen"

    const/4 v8, 0x1

    invoke-virtual {v15, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; showNotificationTime; notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58d
    .catch Ljava/lang/Exception; {:try_start_569 .. :try_end_58d} :catch_58e

    .line 505
    goto :goto_597

    .line 503
    :catch_58e
    move-exception v0

    move-object v5, v0

    .line 504
    .local v5, "e":Ljava/lang/Exception;
    :try_start_590
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_597
    :goto_597
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    const/4 v9, -0x1

    if-lt v5, v8, :cond_5f3

    .line 509
    const-string v5, "PUBLIC"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2300(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c8

    .line 510
    const/4 v5, 0x1

    iput v5, v10, Landroid/app/Notification;->visibility:I

    .line 511
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; made notification public; notification: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f3

    .line 512
    :cond_5c8
    const-string v5, "PRIVATE"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2300(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f3

    .line 513
    iput v9, v10, Landroid/app/Notification;->visibility:I

    .line 514
    const/4 v5, 0x0

    iput-object v5, v10, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 515
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; made notification private; notification: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_5f3
    :goto_5f3
    const-string v5, "MAX"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61e

    .line 520
    const/4 v4, 0x2

    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 521
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; PRIORITY_MAX; notification: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c4

    .line 522
    :cond_61e
    const-string v5, "HIGH"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_649

    .line 523
    const/4 v4, 0x1

    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 524
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; PRIORITY_HIGH; notification: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c4

    .line 525
    :cond_649
    const-string v5, "DEFAULT"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_673

    .line 526
    const/4 v4, 0x0

    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 527
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; PRIORITY_DEFAULT; notification: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c4

    .line 528
    :cond_673
    const-string v5, "LOW"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69c

    .line 529
    iput v9, v10, Landroid/app/Notification;->priority:I

    .line 530
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; PRIORITY_LOW; notification: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c4

    .line 531
    :cond_69c
    const-string v5, "MIN"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c4

    .line 532
    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 533
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; PRIORITY_MIN; notification: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_6c4
    :goto_6c4
    const-string v4, "NO_CHANGE"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xfa

    if-nez v4, :cond_750

    .line 537
    iget v4, v10, Landroid/app/Notification;->ledARGB:I

    if-nez v4, :cond_6da

    .line 538
    iput v9, v10, Landroid/app/Notification;->ledARGB:I

    .line 540
    :cond_6da
    iget v4, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v10, Landroid/app/Notification;->defaults:I

    .line 541
    iget v4, v10, Landroid/app/Notification;->flags:I

    const/4 v8, 0x1

    or-int/2addr v4, v8

    iput v4, v10, Landroid/app/Notification;->flags:I

    .line 542
    const/4 v4, 0x0

    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 543
    const-string v4, "ON"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_700

    .line 544
    const v4, 0x5f5e100

    iput v4, v10, Landroid/app/Notification;->ledOnMS:I

    .line 545
    const/4 v4, 0x1

    iput v4, v10, Landroid/app/Notification;->ledOffMS:I

    goto :goto_750

    .line 546
    :cond_700
    const-string v4, "FLASH_SLOW"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_715

    .line 547
    iput v7, v10, Landroid/app/Notification;->ledOnMS:I

    .line 548
    const/16 v4, 0x7d0

    iput v4, v10, Landroid/app/Notification;->ledOffMS:I

    goto :goto_750

    .line 549
    :cond_715
    const-string v4, "FLASH_MEDIUM"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72a

    .line 550
    const/16 v4, 0x1f4

    iput v4, v10, Landroid/app/Notification;->ledOnMS:I

    .line 551
    iput v7, v10, Landroid/app/Notification;->ledOffMS:I

    goto :goto_750

    .line 552
    :cond_72a
    const-string v4, "FLASH_FAST"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73d

    .line 553
    iput v5, v10, Landroid/app/Notification;->ledOnMS:I

    .line 554
    iput v5, v10, Landroid/app/Notification;->ledOffMS:I

    goto :goto_750

    .line 555
    :cond_73d
    const-string v4, "OFF"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_750

    .line 556
    const/4 v4, 0x0

    iput v4, v10, Landroid/app/Notification;->ledOnMS:I

    .line 557
    iput v4, v10, Landroid/app/Notification;->ledOffMS:I

    .line 561
    :cond_750
    :goto_750
    const-string v4, "NO_CHANGE"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80c

    .line 562
    iget v4, v10, Landroid/app/Notification;->defaults:I

    const/4 v8, 0x4

    and-int/2addr v4, v8

    if-eqz v4, :cond_776

    .line 563
    const-string v4, "NO_CHANGE"

    iget-object v8, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;
    invoke-static {v8}, Lcom/begal/appclone/classes/NotificationOptions;->access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_776

    .line 564
    iput v7, v10, Landroid/app/Notification;->ledOnMS:I

    .line 565
    iput v5, v10, Landroid/app/Notification;->ledOffMS:I

    .line 568
    :cond_776
    iget v4, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v10, Landroid/app/Notification;->defaults:I

    .line 569
    iget v4, v10, Landroid/app/Notification;->flags:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v10, Landroid/app/Notification;->flags:I

    .line 570
    const/4 v4, 0x0

    iput v4, v10, Landroid/app/Notification;->priority:I

    .line 571
    const-string v4, "WHITE"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_797

    .line 572
    iput v9, v10, Landroid/app/Notification;->ledARGB:I

    goto/16 :goto_80c

    .line 573
    :cond_797
    const-string v4, "RED"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7aa

    .line 574
    const/high16 v4, -0x10000

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    goto :goto_80c

    .line 575
    :cond_7aa
    const-string v4, "YELLOW"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7bd

    .line 576
    const/16 v4, -0x100

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    goto :goto_80c

    .line 577
    :cond_7bd
    const-string v4, "GREEN"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d1

    .line 578
    const v4, -0xff0100

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    goto :goto_80c

    .line 579
    :cond_7d1
    const-string v4, "CYAN"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e5

    .line 580
    const v4, -0xff0001

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    goto :goto_80c

    .line 581
    :cond_7e5
    const-string v4, "BLUE"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f9

    .line 582
    const v4, -0xffff01

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    goto :goto_80c

    .line 583
    :cond_7f9
    const-string v4, "MAGENTA"

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80c

    .line 584
    const v4, -0xff01

    iput v4, v10, Landroid/app/Notification;->ledARGB:I

    .line 589
    :cond_80c
    :goto_80c
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$2700(Lcom/begal/appclone/classes/NotificationOptions;)I

    move-result v4

    if-lez v4, :cond_8a8

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_8a8

    .line 592
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.begal.appclone.action.SNOOZE_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v4, "i":Landroid/content/Intent;
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v5, "id"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 597
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$2800(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v7, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v8, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v8, :cond_856

    .line 601
    iget-object v8, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    :cond_856
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 606
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Notification$Action;>;"
    :goto_85a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87c

    .line 607
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 608
    .local v9, "action":Landroid/app/Notification$Action;
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_87b

    .line 609
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "snooze_action"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_87b

    .line 610
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 612
    .end local v9    # "action":Landroid/app/Notification$Action;
    :cond_87b
    goto :goto_85a

    .line 614
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Notification$Action;>;"
    :cond_87c
    new-instance v8, Landroid/app/Notification$Action;

    const-string v9, "Snooze"

    const/4 v11, 0x0

    invoke-direct {v8, v11, v9, v5}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 616
    .local v8, "action":Landroid/app/Notification$Action;
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v11, "snooze_action"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_891
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x3

    if-le v9, v11, :cond_89d

    .line 620
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_891

    .line 623
    :cond_89d
    const/4 v9, 0x0

    new-array v11, v9, [Landroid/app/Notification$Action;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/app/Notification$Action;

    iput-object v9, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 627
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v8    # "action":Landroid/app/Notification$Action;
    :cond_8a8
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$2900(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_8f4

    .line 628
    const-class v4, Landroid/app/Notification;

    const-string v5, "setSmallIcon"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Icon;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 629
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v5}, Lcom/begal/appclone/classes/NotificationOptions;->access$2900(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v4, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; replaced small icon"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v5, "android.largeIcon"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f4

    .line 632
    const-string v5, "android.largeIcon"

    iget-object v7, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v7}, Lcom/begal/appclone/classes/NotificationOptions;->access$2900(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 633
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "invoke; replaced large icon"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_8f4
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$500()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_978

    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3000(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4

    if-eqz v4, :cond_978

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_904
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_904} :catch_b32

    const/16 v5, 0x17

    if-lt v4, v5, :cond_978

    .line 641
    :try_start_908
    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 642
    .local v4, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v4, :cond_965

    .line 644
    iget-object v5, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 645
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 646
    .local v7, "w":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 647
    .local v8, "h":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 649
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 650
    .local v11, "canvas":Landroid/graphics/Canvas;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$500()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 651
    const/4 v12, 0x0

    invoke-virtual {v5, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 652
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 654
    invoke-static {v9}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object v4, v12

    .line 655
    const-class v12, Landroid/app/Notification;

    const-string v13, "setSmallIcon"
    :try_end_944
    .catch Ljava/lang/Throwable; {:try_start_908 .. :try_end_944} :catch_96a
    .catch Ljava/lang/Exception; {:try_start_908 .. :try_end_944} :catch_b32

    move-object/from16 v26, v5

    move/from16 v27, v6

    const/4 v5, 0x1

    :try_start_949
    new-array v6, v5, [Ljava/lang/Class;

    .line 655
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "id":I
    .local v26, "drawable":Landroid/graphics/drawable/Drawable;
    .local v27, "id":I
    const-class v5, Landroid/graphics/drawable/Icon;
    :try_end_94d
    .catch Ljava/lang/Throwable; {:try_start_949 .. :try_end_94d} :catch_960
    .catch Ljava/lang/Exception; {:try_start_949 .. :try_end_94d} :catch_b32

    const/16 v16, 0x0

    :try_start_94f
    aput-object v5, v6, v16

    invoke-virtual {v12, v13, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v4, v12, v16

    .line 656
    invoke-virtual {v5, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95d
    .catch Ljava/lang/Throwable; {:try_start_94f .. :try_end_95d} :catch_95e
    .catch Ljava/lang/Exception; {:try_start_94f .. :try_end_95d} :catch_b32

    .line 656
    .end local v4    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "w":I
    .end local v8    # "h":I
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v26    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_969

    .line 658
    :catch_95e
    move-exception v0

    goto :goto_963

    :catch_960
    move-exception v0

    const/16 v16, 0x0

    :goto_963
    move-object v4, v0

    goto :goto_970

    .line 660
    .end local v27    # "id":I
    .restart local v6    # "id":I
    :cond_965
    move/from16 v27, v6

    const/16 v16, 0x0

    .line 660
    .end local v6    # "id":I
    .restart local v27    # "id":I
    :goto_969
    goto :goto_97c

    .line 658
    .end local v27    # "id":I
    .restart local v6    # "id":I
    :catch_96a
    move-exception v0

    move/from16 v27, v6

    const/16 v16, 0x0

    move-object v4, v0

    .line 659
    .end local v6    # "id":I
    .local v4, "t":Ljava/lang/Throwable;
    .restart local v27    # "id":I
    :goto_970
    :try_start_970
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v4    # "t":Ljava/lang/Throwable;
    goto :goto_97c

    .line 664
    .end local v27    # "id":I
    .restart local v6    # "id":I
    :cond_978
    move/from16 v27, v6

    const/16 v16, 0x0

    .line 664
    .end local v6    # "id":I
    .restart local v27    # "id":I
    :goto_97c
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationIcon:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3100(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4
    :try_end_982
    .catch Ljava/lang/Exception; {:try_start_970 .. :try_end_982} :catch_b32

    if-eqz v4, :cond_9c9

    .line 667
    const/4 v4, 0x0

    :try_start_985
    iput-object v4, v10, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 668
    const-string v4, "android.largeIcon"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 670
    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 671
    .local v4, "wearableExtensions":Landroid/os/Bundle;
    if-eqz v4, :cond_999

    .line 672
    const-string v5, "background"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 675
    :cond_999
    const-string v5, "android.car.EXTENSIONS"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 676
    .local v5, "carExtensions":Landroid/os/Bundle;
    if-eqz v5, :cond_9a6

    .line 677
    const-string v6, "large_icon"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 680
    :cond_9a6
    const-class v6, Landroid/app/Notification;

    const-string v7, "mLargeIcon"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 681
    .local v6, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 682
    const/4 v7, 0x0

    invoke-virtual {v6, v10, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "invoke; removed notification icon"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9bf
    .catch Ljava/lang/Exception; {:try_start_985 .. :try_end_9bf} :catch_9c0

    .line 688
    .end local v4    # "wearableExtensions":Landroid/os/Bundle;
    .end local v5    # "carExtensions":Landroid/os/Bundle;
    .end local v6    # "f":Ljava/lang/reflect/Field;
    goto :goto_9c9

    .line 686
    :catch_9c0
    move-exception v0

    move-object v4, v0

    .line 687
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9c2
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9c9
    :goto_9c9
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationActions:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3200(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4
    :try_end_9cf
    .catch Ljava/lang/Exception; {:try_start_9c2 .. :try_end_9cf} :catch_b32

    if-eqz v4, :cond_9f8

    .line 694
    const/4 v4, 0x0

    :try_start_9d2
    iput-object v4, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 695
    iput-object v4, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 696
    iput-object v4, v10, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 697
    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 698
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_9e5

    .line 699
    const-string v5, "actions"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 701
    :cond_9e5
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoke; removed notification actions"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9ee
    .catch Ljava/lang/Exception; {:try_start_9d2 .. :try_end_9ee} :catch_9ef

    .line 704
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_9f8

    .line 702
    :catch_9ef
    move-exception v0

    move-object v4, v0

    .line 703
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9f1
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9f8
    :goto_9f8
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationPeople:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3300(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4
    :try_end_9fe
    .catch Ljava/lang/Exception; {:try_start_9f1 .. :try_end_9fe} :catch_b32

    if-eqz v4, :cond_a72

    .line 710
    :try_start_a00
    const-string v4, "android.messagingUser"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 711
    const-string v4, "android.people.list"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 712
    const-string v4, "android.people"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 713
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_a37

    .line 714
    const-string v4, "android.messages"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 715
    .local v4, "parcelables":[Landroid/os/Parcelable;
    if-eqz v4, :cond_a37

    .line 716
    array-length v5, v4

    const/4 v6, 0x0

    :goto_a1f
    if-ge v6, v5, :cond_a37

    aget-object v7, v4, v6

    .line 717
    .local v7, "parcelable":Landroid/os/Parcelable;
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_a34

    .line 718
    move-object v8, v7

    check-cast v8, Landroid/os/Bundle;

    .line 719
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v9, "sender"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 720
    const-string v9, "sender_person"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 716
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_a34
    add-int/lit8 v6, v6, 0x1

    goto :goto_a1f

    .line 725
    .end local v4    # "parcelables":[Landroid/os/Parcelable;
    :cond_a37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_a5f

    .line 726
    const-string v4, "android.messages.historic"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 727
    .restart local v4    # "parcelables":[Landroid/os/Parcelable;
    if-eqz v4, :cond_a5f

    .line 728
    array-length v5, v4

    const/4 v6, 0x0

    :goto_a47
    if-ge v6, v5, :cond_a5f

    aget-object v7, v4, v6

    .line 729
    .restart local v7    # "parcelable":Landroid/os/Parcelable;
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_a5c

    .line 730
    move-object v8, v7

    check-cast v8, Landroid/os/Bundle;

    .line 731
    .restart local v8    # "bundle":Landroid/os/Bundle;
    const-string v9, "sender"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 732
    const-string v9, "sender_person"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 728
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_a5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a47

    .line 737
    .end local v4    # "parcelables":[Landroid/os/Parcelable;
    :cond_a5f
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "invoke; removed notification people"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a68
    .catch Ljava/lang/Exception; {:try_start_a00 .. :try_end_a68} :catch_a69

    .line 740
    goto :goto_a72

    .line 738
    :catch_a69
    move-exception v0

    move-object v4, v0

    .line 739
    .local v4, "e":Ljava/lang/Exception;
    :try_start_a6b
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a72
    :goto_a72
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mSimpleNotifications:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3400(Lcom/begal/appclone/classes/NotificationOptions;)Z

    move-result v4

    if-eqz v4, :cond_a93

    .line 745
    iget-object v4, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_a93

    .line 746
    iget-object v4, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.picture"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 747
    iget-object v4, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.largeIcon.big"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 748
    iget-object v4, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 753
    :cond_a93
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b31

    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    .line 754
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_aa5
    .catch Ljava/lang/Exception; {:try_start_a6b .. :try_end_aa5} :catch_b32

    if-nez v4, :cond_b31

    .line 756
    :try_start_aa7
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;
    invoke-static {v4}, Lcom/begal/appclone/classes/NotificationOptions;->access$3500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ab1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 757
    .local v5, "replacement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v11, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->this$0:Lcom/begal/appclone/classes/NotificationOptions;

    const-string v6, "replace"

    .line 758
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    const-string v6, "with"

    .line 759
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ignoreCase"

    .line 760
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "replaceInTitle"

    .line 761
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    const-string v8, "replaceInContent"

    .line 762
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const-string v8, "replaceInMessages"

    .line 763
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const-string v8, "replaceInActions"

    .line 764
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19
    :try_end_b0c
    .catch Ljava/lang/Exception; {:try_start_aa7 .. :try_end_b0c} :catch_b24

    .line 757
    move-object v12, v10

    move-object/from16 v8, v25

    .line 757
    .end local v25    # "text":Ljava/lang/Object;
    .local v8, "text":Ljava/lang/Object;
    move-object v9, v14

    move-object v14, v6

    .line 757
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v9, "sb":Ljava/lang/StringBuilder;
    move-object v6, v15

    move v15, v7

    .line 757
    .end local v15    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_b13
    # invokes: Lcom/begal/appclone/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    invoke-static/range {v11 .. v19}, Lcom/begal/appclone/classes/NotificationOptions;->access$3600(Lcom/begal/appclone/classes/NotificationOptions;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_b16
    .catch Ljava/lang/Exception; {:try_start_b13 .. :try_end_b16} :catch_b1c

    .line 766
    .end local v5    # "replacement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 756
    move-object v15, v6

    move-object/from16 v25, v8

    move-object v14, v9

    goto :goto_ab1

    .line 767
    :catch_b1c
    move-exception v0

    move-object v4, v0

    goto :goto_b2a

    .line 769
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "text":Ljava/lang/Object;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "extras":Landroid/os/Bundle;
    .restart local v25    # "text":Ljava/lang/Object;
    :cond_b1f
    move-object v9, v14

    move-object v6, v15

    move-object/from16 v8, v25

    .line 769
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v25    # "text":Ljava/lang/Object;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "text":Ljava/lang/Object;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    goto :goto_b31

    .line 767
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "text":Ljava/lang/Object;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "extras":Landroid/os/Bundle;
    .restart local v25    # "text":Ljava/lang/Object;
    :catch_b24
    move-exception v0

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v8, v25

    move-object v4, v0

    .line 768
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v25    # "text":Ljava/lang/Object;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "text":Ljava/lang/Object;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :goto_b2a
    :try_start_b2a
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b31
    .catch Ljava/lang/Exception; {:try_start_b2a .. :try_end_b31} :catch_b32

    .line 777
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "text":Ljava/lang/Object;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v21    # "textLines":[Ljava/lang/CharSequence;
    .end local v22    # "quietTime":Z
    .end local v23    # "concatenatedText":Ljava/lang/String;
    .end local v24    # "blockAllNotifications":Z
    .end local v27    # "id":I
    :cond_b31
    :goto_b31
    goto :goto_b3b

    .line 775
    :catch_b32
    move-exception v0

    move-object v4, v0

    .line 776
    .restart local v4    # "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b3b
    :goto_b3b
    iget-object v4, v1, Lcom/begal/appclone/classes/NotificationOptions$1;->val$instance:Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :array_b42
    .array-data 8
        0x0
        0x32
    .end array-data

    :array_b4e
    .array-data 8
        0x0
        0x64
    .end array-data

    :array_b5a
    .array-data 8
        0x0
        0x1f4
    .end array-data

    :array_b66
    .array-data 8
        0x0
        0x3e8
    .end array-data
.end method
