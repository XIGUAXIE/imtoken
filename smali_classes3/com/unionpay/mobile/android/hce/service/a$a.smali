.class public abstract Lcom/unionpay/mobile/android/hce/service/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/unionpay/mobile/android/hce/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/hce/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/hce/service/a$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/unionpay/mobile/android/hce/service/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/unionpay/mobile/android/hce/service/a;

    return-object v0

    :cond_1
    new-instance v0, Lcom/unionpay/mobile/android/hce/service/a$a$a;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/hce/service/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.unionpay.mobile.android.hce.service.IHCEBankService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/hce/service/b$a;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/b;

    move-result-object p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/unionpay/mobile/android/hce/service/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/hce/service/b$a;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/b;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/unionpay/mobile/android/hce/service/a$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
