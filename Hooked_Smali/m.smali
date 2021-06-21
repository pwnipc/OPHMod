.class final Lm;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:Ljava/lang/Object;

.field private static I:Ljava/lang/reflect/Field;

.field private static Z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm;->Code:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static Code(Landroid/app/Notification$Builder;Ll;)Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Ll;->Code()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p1}, Ll;->I()[Lt;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 261
    const-string v1, "android.support.remoteInputs"

    invoke-virtual {p1}, Ll;->I()[Lt;

    move-result-object v2

    invoke-static {v2}, Lu;->Code([Lt;)[Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 264
    :cond_21
    return-object v0
.end method

.method public static Code(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 212
    sget-object v2, Lm;->Code:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_4
    sget-boolean v0, Lm;->Z:Z

    if-eqz v0, :cond_b

    .line 214
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4c

    move-object v0, v1

    .line 239
    :goto_a
    return-object v0

    .line 217
    :cond_b
    :try_start_b
    sget-object v0, Lm;->I:Ljava/lang/reflect/Field;

    if-nez v0, :cond_36

    .line 218
    const-class v0, Landroid/app/Notification;

    const-string v3, "extras"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 219
    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 220
    const-string v0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lm;->Z:Z
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2d} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_2d} :catch_5d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4c

    .line 222
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_4c

    move-object v0, v1

    goto :goto_a

    .line 224
    :cond_30
    const/4 v3, 0x1

    :try_start_31
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    sput-object v0, Lm;->I:Ljava/lang/reflect/Field;

    .line 227
    :cond_36
    sget-object v0, Lm;->I:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 228
    if-nez v0, :cond_4a

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    sget-object v3, Lm;->I:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4a} :catch_4f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_4a} :catch_5d
    .catchall {:try_start_31 .. :try_end_4a} :catchall_4c

    .line 232
    :cond_4a
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    goto :goto_a

    .line 240
    :catchall_4c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 233
    :catch_4f
    move-exception v0

    .line 234
    :try_start_50
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_57
    const/4 v0, 0x1

    sput-boolean v0, Lm;->Z:Z

    .line 239
    monitor-exit v2

    move-object v0, v1

    goto :goto_a

    .line 235
    :catch_5d
    move-exception v0

    .line 236
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_4c

    goto :goto_57
.end method

.method public static Code(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_1f

    .line 196
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 197
    if-eqz v0, :cond_1b

    .line 198
    if-nez v1, :cond_18

    .line 199
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 201
    :cond_18
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 204
    :cond_1f
    return-object v1
.end method
