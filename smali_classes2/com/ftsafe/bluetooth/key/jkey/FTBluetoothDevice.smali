.class public Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private devRssi:I

.field private devType:I

.field private radioDevName:Ljava/lang/String;

.field private radioDevUUID:Ljava/lang/String;

.field private radioManufacturerData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/a;

    invoke-direct {v0}, Lcom/ftsafe/bluetooth/key/jkey/a;-><init>()V

    sput-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devType:I

    iput-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevUUID:Ljava/lang/String;

    iput p5, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devRssi:I

    iput-object p6, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioManufacturerData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevUUID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioManufacturerData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevRssi()I
    .locals 1

    iget v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devRssi:I

    return v0
.end method

.method public getDevType()I
    .locals 1

    iget v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devType:I

    return v0
.end method

.method public getRadioDevName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioManufacturerData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioManufacturerData:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevUUID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->devRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioDevUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->radioManufacturerData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
