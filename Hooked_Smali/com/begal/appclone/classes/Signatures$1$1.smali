.class Lcom/begal/appclone/classes/Signatures$1$1;
.super Ljava/lang/Object;
.source "Signatures.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/Signatures$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/Signatures$1;

.field final synthetic val$originalPackageManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/Signatures$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$1"    # Lcom/begal/appclone/classes/Signatures$1;

    .line 91
    iput-object p1, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iput-object p2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResolveInfos(Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p1, "res"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 237
    :try_start_0
    const-string v0, "android.content.pm.ParceledListSlice"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1f

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 241
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_23
    const-string v1, "mList"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 242
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 243
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "f":Ljava/lang/reflect/Field;
    move-object v0, v2

    .line 244
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_38

    .line 245
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_35
    move-object v0, p1

    check-cast v0, Ljava/util/List;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 247
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_38
    return-object v0

    .line 248
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_39
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "name":Ljava/lang/String;
    const-string v2, "checkSignatures"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 108
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 109
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object v2, p3, v0

    goto :goto_36

    .line 110
    :cond_20
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 111
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$originalUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    .line 114
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 115
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object v2, p3, v3

    goto :goto_60

    .line 116
    :cond_4a
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 117
    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget v2, v2, Lcom/begal/appclone/classes/Signatures$1;->val$originalUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    .line 125
    .end local v1    # "name":Ljava/lang/String;
    :cond_60
    :goto_60
    goto :goto_69

    .line 123
    :catch_61
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    iget-object v1, p0, Lcom/begal/appclone/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "res":Ljava/lang/Object;
    :try_start_6f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "name":Ljava/lang/String;
    const-string v3, "getPackageInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_fa

    .line 132
    if-eqz v1, :cond_234

    .line 133
    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 134
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "WEB_ONLY"

    iget-object v5, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v5, v5, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    const-string v3, "com.facebook.katana"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    const-string v3, "com.facebook.lite"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    const-string v3, "com.facebook.services"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 138
    :cond_af
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "invoke; getPackageInfo; returning null for Facebook packages"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v4

    .line 140
    :cond_b9
    const-string v3, "WEB_ONLY"

    iget-object v5, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v5, v5, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mTwitterLoginBehavior:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/Signatures;->access$200(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    const-string v3, "com.twitter.android"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 142
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "invoke; getPackageInfo; returning null for Twitter package"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v4

    .line 144
    :cond_dd
    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 145
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_f8

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_f8

    .line 148
    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->val$originalSignatures:[Landroid/content/pm/Signature;

    iput-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 155
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_f8
    goto/16 :goto_234

    .line 156
    :cond_fa
    const-string v3, "getApplicationInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 157
    if-eqz v1, :cond_234

    .line 158
    move-object v0, v1

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 159
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, "WEB_ONLY"

    iget-object v5, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v5, v5, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    const-string v3, "com.facebook.katana"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_135

    const-string v3, "com.facebook.lite"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 161
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_135

    const-string v3, "com.facebook.services"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 163
    :cond_135
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "invoke; getApplicationInfo; returning null for Facebook packages"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v4

    .line 165
    :cond_13f
    const-string v3, "WEB_ONLY"

    iget-object v5, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v5, v5, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mTwitterLoginBehavior:Ljava/lang/String;
    invoke-static {v5}, Lcom/begal/appclone/classes/Signatures;->access$200(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    const-string v3, "com.twitter.android"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 167
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "invoke; getApplicationInfo; returning null for Twitter package"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v4

    .line 171
    :cond_163
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 172
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_234

    .line 173
    :cond_16b
    const-string v3, "getInstallerPackageName"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 174
    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3

    .line 175
    :cond_17f
    const-string v0, "queryIntentActivities"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_185} :catch_235

    if-eqz v0, :cond_1e8

    .line 177
    :try_start_187
    iget-object v0, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mDisableShareActions:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/Signatures;->access$300(Lcom/begal/appclone/classes/Signatures;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 178
    invoke-direct {p0, v1}, Lcom/begal/appclone/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1e7

    :cond_199
    const-string v0, "WEB_ONLY"

    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b9

    const-string v0, "WEB_ONLY_ALT"

    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    .line 182
    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 185
    :cond_1b9
    invoke-direct {p0, v1}, Lcom/begal/appclone/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 187
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 187
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_1c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1de

    .line 191
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana/.ProxyAuth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_187 .. :try_end_1de} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1de} :catch_235

    .line 195
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1de
    goto :goto_1c1

    .line 198
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :catch_1df
    move-exception v0

    .line 199
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1e0
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1e7
    :goto_1e7
    goto :goto_234

    .line 201
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1e8
    const-string v0, "resolveIntent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1ee} :catch_235

    if-eqz v0, :cond_234

    .line 203
    :try_start_1f0
    const-string v0, "WEB_ONLY"

    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    const-string v0, "WEB_ONLY_ALT"

    iget-object v3, p0, Lcom/begal/appclone/classes/Signatures$1$1;->this$1:Lcom/begal/appclone/classes/Signatures$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/Signatures$1;->this$0:Lcom/begal/appclone/classes/Signatures;

    .line 204
    # getter for: Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/Signatures;->access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 207
    :cond_210
    move-object v0, v1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 208
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_22b

    .line 210
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.facebook.katana/.ProxyAuth"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 211
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "invoke; resolveIntent; returning no resolved intent for Facebook"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22a
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_22a} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_22a} :catch_235

    .line 212
    return-object v4

    .line 218
    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_22b
    goto :goto_234

    .line 216
    :catch_22c
    move-exception v0

    .line 217
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_22d
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_234} :catch_235

    .line 222
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "name":Ljava/lang/String;
    :cond_234
    :goto_234
    goto :goto_23d

    .line 220
    :catch_235
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23d
    return-object v1
.end method
