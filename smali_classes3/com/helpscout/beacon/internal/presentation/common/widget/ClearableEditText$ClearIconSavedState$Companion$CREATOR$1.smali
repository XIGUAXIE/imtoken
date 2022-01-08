.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
        "Landroid/os/Parcel;",
        "source",
        "createFromParcel",
        "(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
        "",
        "size",
        "",
        "newArray",
        "(I)[Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;
    .locals 0

    new-array p1, p1, [Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1;->newArray(I)[Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    move-result-object p1

    return-object p1
.end method
