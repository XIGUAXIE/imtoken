.class public final enum Lorg/bitcoinj/core/InventoryItem$Type;
.super Ljava/lang/Enum;
.source "InventoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/InventoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/core/InventoryItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/core/InventoryItem$Type;

.field public static final enum Block:Lorg/bitcoinj/core/InventoryItem$Type;

.field public static final enum Error:Lorg/bitcoinj/core/InventoryItem$Type;

.field public static final enum FilteredBlock:Lorg/bitcoinj/core/InventoryItem$Type;

.field public static final enum Transaction:Lorg/bitcoinj/core/InventoryItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v1, 0x0

    const-string v2, "Error"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/InventoryItem$Type;->Error:Lorg/bitcoinj/core/InventoryItem$Type;

    .line 30
    new-instance v0, Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v2, 0x1

    const-string v3, "Transaction"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    .line 31
    new-instance v0, Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v3, 0x2

    const-string v4, "Block"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    .line 32
    new-instance v0, Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v4, 0x3

    const-string v5, "FilteredBlock"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/core/InventoryItem$Type;->FilteredBlock:Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/bitcoinj/core/InventoryItem$Type;

    .line 28
    sget-object v6, Lorg/bitcoinj/core/InventoryItem$Type;->Error:Lorg/bitcoinj/core/InventoryItem$Type;

    aput-object v6, v5, v1

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    aput-object v1, v5, v2

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/bitcoinj/core/InventoryItem$Type;->$VALUES:[Lorg/bitcoinj/core/InventoryItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/core/InventoryItem$Type;
    .locals 1

    .line 28
    const-class v0, Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/InventoryItem$Type;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/core/InventoryItem$Type;
    .locals 1

    .line 28
    sget-object v0, Lorg/bitcoinj/core/InventoryItem$Type;->$VALUES:[Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v0}, [Lorg/bitcoinj/core/InventoryItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/core/InventoryItem$Type;

    return-object v0
.end method
