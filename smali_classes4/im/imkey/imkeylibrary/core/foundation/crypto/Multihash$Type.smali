.class public final enum Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;
.super Ljava/lang/Enum;
.source "Multihash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum blake2b:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum blake2s:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field private static lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum md5:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum sha1:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum sha2_256:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum sha2_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

.field public static final enum sha3_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;


# instance fields
.field public index:I

.field public length:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v1, 0x0

    const-string v2, "md5"

    const/16 v3, 0xd5

    const/16 v4, 0x10

    invoke-direct {v0, v2, v1, v3, v4}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->md5:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 16
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/16 v2, 0x14

    const/4 v3, 0x1

    const-string v4, "sha1"

    const/16 v5, 0x11

    invoke-direct {v0, v4, v3, v5, v2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha1:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 17
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/16 v4, 0x20

    const/4 v5, 0x2

    const-string v6, "sha2_256"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v5, v7, v4}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha2_256:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 18
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v6, 0x3

    const/16 v7, 0x40

    const-string v8, "sha2_512"

    const/16 v9, 0x13

    invoke-direct {v0, v8, v6, v9, v7}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha2_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 19
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v8, 0x4

    const-string v9, "sha3_512"

    invoke-direct {v0, v9, v8, v2, v7}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha3_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 20
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v2, 0x5

    const-string v9, "blake2b"

    invoke-direct {v0, v9, v2, v7, v7}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->blake2b:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 21
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v7, 0x6

    const-string v9, "blake2s"

    const/16 v10, 0x41

    invoke-direct {v0, v9, v7, v10, v4}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->blake2s:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    const/4 v4, 0x7

    new-array v4, v4, [Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 14
    sget-object v9, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->md5:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v9, v4, v1

    sget-object v9, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha1:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v9, v4, v3

    sget-object v3, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha2_256:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v3, v4, v5

    sget-object v3, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha2_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v3, v4, v6

    sget-object v3, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->sha3_512:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v3, v4, v8

    sget-object v3, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->blake2b:Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    aput-object v3, v4, v2

    aput-object v0, v4, v7

    sput-object v4, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->$VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup:Ljava/util/Map;

    .line 32
    invoke-static {}, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->values()[Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 33
    sget-object v4, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup:Ljava/util/Map;

    iget v5, v3, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->index:I

    .line 27
    iput p4, p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->length:I

    return-void
.end method

.method public static lookup(I)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;
    .locals 3

    .line 37
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Multihash type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;
    .locals 1

    .line 14
    const-class v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    return-object p0
.end method

.method public static values()[Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;
    .locals 1

    .line 14
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->$VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    invoke-virtual {v0}, [Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/imkey/imkeylibrary/core/foundation/crypto/Multihash$Type;

    return-object v0
.end method
