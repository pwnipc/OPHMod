.class final enum Lcom/opera/mini/android/as;
.super Ljava/lang/Enum;
.source "Source"


# static fields
.field public static final enum Code:Lcom/opera/mini/android/as;

.field public static final enum I:Lcom/opera/mini/android/as;

.field private static final synthetic J:[Lcom/opera/mini/android/as;

.field private static enum Z:Lcom/opera/mini/android/as;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/opera/mini/android/as;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/opera/mini/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    .line 112
    new-instance v0, Lcom/opera/mini/android/as;

    const-string v1, "SESSION"

    invoke-direct {v0, v1, v3}, Lcom/opera/mini/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/opera/mini/android/as;->Z:Lcom/opera/mini/android/as;

    .line 113
    new-instance v0, Lcom/opera/mini/android/as;

    const-string v1, "HIT"

    invoke-direct {v0, v1, v4}, Lcom/opera/mini/android/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/opera/mini/android/as;

    sget-object v1, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/opera/mini/android/as;->Z:Lcom/opera/mini/android/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    aput-object v1, v0, v4

    sput-object v0, Lcom/opera/mini/android/as;->J:[Lcom/opera/mini/android/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opera/mini/android/as;
    .registers 2

    .prologue
    .line 109
    const-class v0, Lcom/opera/mini/android/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/as;

    return-object v0
.end method

.method public static values()[Lcom/opera/mini/android/as;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/opera/mini/android/as;->J:[Lcom/opera/mini/android/as;

    invoke-virtual {v0}, [Lcom/opera/mini/android/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opera/mini/android/as;

    return-object v0
.end method
