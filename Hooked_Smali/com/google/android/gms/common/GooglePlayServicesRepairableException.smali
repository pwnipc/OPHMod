.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/Code;


# instance fields
.field private final iL:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/Code;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->iL:I

    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->iL:I

    return v0
.end method
