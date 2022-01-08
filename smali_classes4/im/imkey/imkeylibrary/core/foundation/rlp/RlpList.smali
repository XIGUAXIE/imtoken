.class public Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;
.super Ljava/lang/Object;
.source "RlpList.java"

# interfaces
.implements Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;->values:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/foundation/rlp/RlpType;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/foundation/rlp/RlpList;->values:Ljava/util/List;

    return-object v0
.end method
