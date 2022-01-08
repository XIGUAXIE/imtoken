.class public final enum Lcom/google/android/gms/internal/vision/zzdv;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzdv;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgb;"
    }
.end annotation


# static fields
.field private static final zzdv:Lcom/google/android/gms/internal/vision/zzgc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgc<",
            "Lcom/google/android/gms/internal/vision/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzqg:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqh:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqi:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqj:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqk:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzql:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqm:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqn:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqo:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqp:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqq:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqr:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqs:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final enum zzqt:Lcom/google/android/gms/internal/vision/zzdv;

.field private static final synthetic zzqu:[Lcom/google/android/gms/internal/vision/zzdv;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CODE_128"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqg:Lcom/google/android/gms/internal/vision/zzdv;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v3, 0x2

    const-string v4, "CODE_39"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqh:Lcom/google/android/gms/internal/vision/zzdv;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v4, 0x3

    const-string v5, "CODE_93"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqi:Lcom/google/android/gms/internal/vision/zzdv;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v5, 0x4

    const-string v6, "CODABAR"

    invoke-direct {v0, v6, v4, v5}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqj:Lcom/google/android/gms/internal/vision/zzdv;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v6, 0x5

    const-string v7, "DATA_MATRIX"

    invoke-direct {v0, v7, v5, v6}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqk:Lcom/google/android/gms/internal/vision/zzdv;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v7, 0x6

    const-string v8, "EAN_13"

    invoke-direct {v0, v8, v6, v7}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzql:Lcom/google/android/gms/internal/vision/zzdv;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/4 v8, 0x7

    const-string v9, "EAN_8"

    invoke-direct {v0, v9, v7, v8}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqm:Lcom/google/android/gms/internal/vision/zzdv;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v9, 0x8

    const-string v10, "ITF"

    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqn:Lcom/google/android/gms/internal/vision/zzdv;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v10, 0x9

    const-string v11, "QR_CODE"

    invoke-direct {v0, v11, v9, v10}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqo:Lcom/google/android/gms/internal/vision/zzdv;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v11, 0xa

    const-string v12, "UPC_A"

    invoke-direct {v0, v12, v10, v11}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqp:Lcom/google/android/gms/internal/vision/zzdv;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v12, 0xb

    const-string v13, "UPC_E"

    invoke-direct {v0, v13, v11, v12}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqq:Lcom/google/android/gms/internal/vision/zzdv;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v13, 0xc

    const-string v14, "PDF417"

    invoke-direct {v0, v14, v12, v13}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqr:Lcom/google/android/gms/internal/vision/zzdv;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v14, 0xd

    const-string v15, "AZTEC"

    invoke-direct {v0, v15, v13, v14}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqs:Lcom/google/android/gms/internal/vision/zzdv;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v15, 0xe

    const-string v13, "DATABAR"

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/gms/internal/vision/zzdv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqt:Lcom/google/android/gms/internal/vision/zzdv;

    new-array v13, v15, [Lcom/google/android/gms/internal/vision/zzdv;

    .line 37
    sget-object v15, Lcom/google/android/gms/internal/vision/zzdv;->zzqg:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v15, v13, v1

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqh:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqi:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqj:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqk:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v5

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzql:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v6

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqm:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v7

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqn:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v8

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqo:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v9

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqp:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v10

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqq:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v11

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqr:Lcom/google/android/gms/internal/vision/zzdv;

    aput-object v1, v13, v12

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdv;->zzqs:Lcom/google/android/gms/internal/vision/zzdv;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/google/android/gms/internal/vision/zzdv;->zzqu:[Lcom/google/android/gms/internal/vision/zzdv;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzdv:Lcom/google/android/gms/internal/vision/zzgc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzdv;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzdv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdv;->zzqu:[Lcom/google/android/gms/internal/vision/zzdv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzdv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzdv;

    return-object v0
.end method

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdx;->zzhl:Lcom/google/android/gms/internal/vision/zzgd;

    return-object v0
.end method

.method public static zzv(I)Lcom/google/android/gms/internal/vision/zzdv;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqt:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqs:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqr:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqq:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqp:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqo:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqn:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqm:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzql:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 8
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqk:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqj:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 6
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqi:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 5
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqh:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    .line 4
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdv;->zzqg:Lcom/google/android/gms/internal/vision/zzdv;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzr()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdv;->value:I

    return v0
.end method
