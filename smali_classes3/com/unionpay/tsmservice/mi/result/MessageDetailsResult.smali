.class public Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mLastUpdatedTag:Ljava/lang/String;

.field private mMessageDetails:[Lcom/unionpay/tsmservice/mi/data/MessageDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult$1;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult$1;-><init>()V

    sput-object v0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/tsmservice/mi/data/MessageDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unionpay/tsmservice/mi/data/MessageDetail;

    iput-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mMessageDetails:[Lcom/unionpay/tsmservice/mi/data/MessageDetail;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastUpdatedTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDetails()[Lcom/unionpay/tsmservice/mi/data/MessageDetail;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mMessageDetails:[Lcom/unionpay/tsmservice/mi/data/MessageDetail;

    return-object v0
.end method

.method public setLastUpdatedTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    return-void
.end method

.method public setMessageDetails([Lcom/unionpay/tsmservice/mi/data/MessageDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mMessageDetails:[Lcom/unionpay/tsmservice/mi/data/MessageDetail;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mMessageDetails:[Lcom/unionpay/tsmservice/mi/data/MessageDetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/unionpay/tsmservice/mi/result/MessageDetailsResult;->mLastUpdatedTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
