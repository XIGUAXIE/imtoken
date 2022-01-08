.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    sget-object v1, Lcom/helpscout/beacon/a/d/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/a/d/b/b;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;-><init>(Lcom/helpscout/beacon/a/d/b/b;)V

    return-object v0
.end method

.method public final a(I)[Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;
    .locals 0

    new-array p1, p1, [Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b$a;->a(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b$a;->a(I)[Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    move-result-object p1

    return-object p1
.end method
