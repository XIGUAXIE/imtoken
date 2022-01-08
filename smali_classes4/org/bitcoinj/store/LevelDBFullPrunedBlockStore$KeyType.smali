.class final enum Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;
.super Ljava/lang/Enum;
.source "LevelDBFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum ADDRESS_HASHINDEX:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum CREATED:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum HEADERS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum HEIGHT_UNDOABLEBLOCKS:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum VERIFIED_CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

.field public static final enum VERSION_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 562
    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v1, 0x0

    const-string v2, "CREATED"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CREATED:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v2, 0x1

    const-string v3, "CHAIN_HEAD_SETTING"

    invoke-direct {v0, v3, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v3, 0x2

    const-string v4, "VERIFIED_CHAIN_HEAD_SETTING"

    invoke-direct {v0, v4, v3}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERIFIED_CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v4, 0x3

    const-string v5, "VERSION_SETTING"

    invoke-direct {v0, v5, v4}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERSION_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v5, 0x4

    const-string v6, "HEADERS_ALL"

    invoke-direct {v0, v6, v5}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEADERS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v6, 0x5

    const-string v7, "UNDOABLEBLOCKS_ALL"

    invoke-direct {v0, v7, v6}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v7, 0x6

    const-string v8, "HEIGHT_UNDOABLEBLOCKS"

    invoke-direct {v0, v8, v7}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEIGHT_UNDOABLEBLOCKS:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/4 v8, 0x7

    const-string v9, "OPENOUT_ALL"

    invoke-direct {v0, v9, v8}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    new-instance v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/16 v9, 0x8

    const-string v10, "ADDRESS_HASHINDEX"

    invoke-direct {v0, v10, v9}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->ADDRESS_HASHINDEX:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    .line 561
    sget-object v11, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CREATED:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v11, v10, v1

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v2

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERIFIED_CHAIN_HEAD_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v3

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->VERSION_SETTING:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v4

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEADERS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v5

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->UNDOABLEBLOCKS_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v6

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->HEIGHT_UNDOABLEBLOCKS:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v7

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->$VALUES:[Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;
    .locals 1

    .line 561
    const-class v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    return-object p0
.end method

.method public static values()[Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;
    .locals 1

    .line 561
    sget-object v0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->$VALUES:[Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-virtual {v0}, [Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    return-object v0
.end method
