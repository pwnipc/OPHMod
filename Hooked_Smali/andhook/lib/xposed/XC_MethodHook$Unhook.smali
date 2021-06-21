.class public final Landhook/lib/xposed/XC_MethodHook$Unhook;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Unhook"
.end annotation


# instance fields
.field private final hookMethod:Ljava/lang/reflect/Member;

.field private final slot:I

.field final synthetic this$0:Landhook/lib/xposed/XC_MethodHook;


# direct methods
.method constructor <init>(Landhook/lib/xposed/XC_MethodHook;Ljava/lang/reflect/Member;I)V
    .registers 4
    .param p1, "this$0"    # Landhook/lib/xposed/XC_MethodHook;
    .param p2, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p3, "slot"    # I

    .line 161
    iput-object p1, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->this$0:Landhook/lib/xposed/XC_MethodHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 163
    iput p3, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->slot:I

    .line 164
    return-void
.end method


# virtual methods
.method public getCallback()Landhook/lib/xposed/XC_MethodHook;
    .registers 2

    .line 174
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->this$0:Landhook/lib/xposed/XC_MethodHook;

    return-object v0
.end method

.method public getHookedMethod()Ljava/lang/reflect/Member;
    .registers 2

    .line 170
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public restore()Z
    .registers 3

    .line 185
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    iget v1, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->slot:I

    invoke-static {v0, v1}, Landhook/lib/xposed/XposedBridge;->unhookMethod(Ljava/lang/reflect/Member;I)Z

    move-result v0

    return v0
.end method

.method public unhook()V
    .registers 3

    .line 178
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    iget-object v1, p0, Landhook/lib/xposed/XC_MethodHook$Unhook;->this$0:Landhook/lib/xposed/XC_MethodHook;

    invoke-static {v0, v1}, Landhook/lib/xposed/XposedBridge;->unhookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)V

    .line 179
    return-void
.end method
