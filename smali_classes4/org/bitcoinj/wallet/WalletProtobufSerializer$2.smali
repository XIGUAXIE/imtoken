.class synthetic Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;
.super Ljava/lang/Object;
.source "WalletProtobufSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/WalletProtobufSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

.field static final synthetic $SwitchMap$org$bitcoinj$core$TransactionConfidence$Source:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 785
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    sget-object v3, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    sget-object v4, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 731
    :catch_2
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    :try_start_3
    sget-object v4, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v4, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v4, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v5, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v6, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->IN_CONFLICT:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v6}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 680
    :catch_8
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    :try_start_9
    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 643
    :catch_e
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    :try_start_f
    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/4 v6, 0x7

    :try_start_15
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v8, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 347
    :catch_15
    invoke-static {}, Lorg/bitcoinj/core/TransactionConfidence$Source;->values()[Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$TransactionConfidence$Source:[I

    :try_start_16
    sget-object v8, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionConfidence$Source;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$TransactionConfidence$Source:[I

    sget-object v8, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionConfidence$Source;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$TransactionConfidence$Source:[I

    sget-object v8, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionConfidence$Source;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 319
    :catch_18
    invoke-static {}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->values()[Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    :try_start_19
    sget-object v8, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    sget-object v8, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    sget-object v8, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    sget-object v8, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 291
    :catch_1c
    invoke-static {}, Lorg/bitcoinj/core/Transaction$Purpose;->values()[Lorg/bitcoinj/core/Transaction$Purpose;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    :try_start_1d
    sget-object v8, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v7, Lorg/bitcoinj/core/Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v7}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_CLAIM:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_PLEDGE:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->ASSURANCE_CONTRACT_STUB:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer$2;->$SwitchMap$org$bitcoinj$core$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction$Purpose;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method
