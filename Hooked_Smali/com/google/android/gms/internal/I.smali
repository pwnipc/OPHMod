.class public final Lcom/google/android/gms/internal/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final Code:Landroid/app/Activity;

.field private final I:Landroid/content/Intent;

.field private final Z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/I;->Code:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/I;->I:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/internal/I;->Z:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->I:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->Code:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/I;->I:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/internal/I;->Z:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v0, "SettingsRedirect"

    const-string v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
