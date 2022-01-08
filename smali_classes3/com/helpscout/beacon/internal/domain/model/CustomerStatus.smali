.class public final enum Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
        "",
        "",
        "customerExists",
        "()Z",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CREATED",
        "UPDATED",
        "NOT_CREATED",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

.field public static final enum CREATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "CREATED"
    .end annotation
.end field

.field public static final enum NOT_CREATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "NOT_CREATED"
    .end annotation
.end field

.field public static final enum UPDATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "UPDATED"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    const/4 v2, 0x0

    const-string v3, "CREATED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->CREATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    const/4 v2, 0x1

    const-string v3, "UPDATED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->UPDATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    const/4 v2, 0x2

    const-string v3, "NOT_CREATED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->NOT_CREATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->$VALUES:[Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->$VALUES:[Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-object v0
.end method


# virtual methods
.method public final customerExists()Z
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->NOT_CREATED:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
