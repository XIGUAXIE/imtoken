.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;",
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
.method public final a(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;
    .locals 4

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_0

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final a(I)[Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;
    .locals 0

    new-array p1, p1, [Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a$a;->a(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a$a;->a(I)[Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    move-result-object p1

    return-object p1
.end method
