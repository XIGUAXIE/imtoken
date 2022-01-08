.class public enum Lproguard/ftsafe/b/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproguard/ftsafe/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lproguard/ftsafe/b/d;

.field public static final enum b:Lproguard/ftsafe/b/d;

.field public static final enum c:Lproguard/ftsafe/b/d;

.field public static final enum d:Lproguard/ftsafe/b/d;

.field public static final enum e:Lproguard/ftsafe/b/d;

.field public static final enum f:Lproguard/ftsafe/b/d;

.field public static final enum g:Lproguard/ftsafe/b/d;

.field public static final enum h:Lproguard/ftsafe/b/d;

.field public static final enum i:Lproguard/ftsafe/b/d;

.field public static final enum j:Lproguard/ftsafe/b/d;

.field public static final enum k:Lproguard/ftsafe/b/d;

.field public static final enum l:Lproguard/ftsafe/b/d;

.field public static final enum m:Lproguard/ftsafe/b/d;

.field private static final synthetic o:[Lproguard/ftsafe/b/d;


# instance fields
.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lproguard/ftsafe/b/e;

    const/4 v1, 0x0

    const-string v2, "FT_SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lproguard/ftsafe/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/j;

    const/4 v2, 0x1

    const-string v3, "FT_BT_NOT_SUPPORT"

    const v4, 0x60061001

    invoke-direct {v0, v3, v2, v4}, Lproguard/ftsafe/b/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/k;

    const/4 v3, 0x2

    const-string v4, "FT_BLE_NOT_SUPPORT"

    const v5, 0x60061002

    invoke-direct {v0, v4, v3, v5}, Lproguard/ftsafe/b/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->c:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/l;

    const/4 v4, 0x3

    const-string v5, "FT_BT_NOT_ENABLED"

    const v6, 0x60061003

    invoke-direct {v0, v5, v4, v6}, Lproguard/ftsafe/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/m;

    const/4 v5, 0x4

    const-string v6, "FT_BT_NOT_CONNECTED"

    const v7, 0x60061004

    invoke-direct {v0, v6, v5, v7}, Lproguard/ftsafe/b/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->e:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/n;

    const/4 v6, 0x5

    const-string v7, "FT_FIND_DEVICE_FAILED"

    const v8, 0x60061005

    invoke-direct {v0, v7, v6, v8}, Lproguard/ftsafe/b/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->f:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/o;

    const/4 v7, 0x6

    const-string v8, "FT_INVALID_PARAMETER"

    const v9, 0x60061006

    invoke-direct {v0, v8, v7, v9}, Lproguard/ftsafe/b/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/p;

    const/4 v8, 0x7

    const-string v9, "FT_BOND_FAIL"

    const v10, 0x60061007

    invoke-direct {v0, v9, v8, v10}, Lproguard/ftsafe/b/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->h:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/q;

    const/16 v9, 0x8

    const-string v10, "FT_OPEN_NOTIFY_FAIL"

    const v11, 0x60061008

    invoke-direct {v0, v10, v9, v11}, Lproguard/ftsafe/b/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->i:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/f;

    const/16 v10, 0x9

    const-string v11, "FT_SEND_DATA_FAIL"

    const v12, 0x60061009

    invoke-direct {v0, v11, v10, v12}, Lproguard/ftsafe/b/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->j:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/g;

    const/16 v11, 0xa

    const-string v12, "FT_ENABLE_BT_FAIL"

    const v13, 0x60061010

    invoke-direct {v0, v12, v11, v13}, Lproguard/ftsafe/b/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->k:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/h;

    const/16 v12, 0xb

    const-string v13, "FT_FAILED"

    const v14, 0x60061020

    invoke-direct {v0, v13, v12, v14}, Lproguard/ftsafe/b/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    new-instance v0, Lproguard/ftsafe/b/i;

    const/16 v13, 0xc

    const-string v14, "FT_LOCATION_UNAUTHORIZED"

    const v15, 0x60061021

    invoke-direct {v0, v14, v13, v15}, Lproguard/ftsafe/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/d;->m:Lproguard/ftsafe/b/d;

    const/16 v14, 0xd

    new-array v14, v14, [Lproguard/ftsafe/b/d;

    sget-object v15, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    aput-object v15, v14, v1

    sget-object v1, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v2

    sget-object v1, Lproguard/ftsafe/b/d;->c:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v3

    sget-object v1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v4

    sget-object v1, Lproguard/ftsafe/b/d;->e:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v5

    sget-object v1, Lproguard/ftsafe/b/d;->f:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v6

    sget-object v1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v7

    sget-object v1, Lproguard/ftsafe/b/d;->h:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v8

    sget-object v1, Lproguard/ftsafe/b/d;->i:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v9

    sget-object v1, Lproguard/ftsafe/b/d;->j:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v10

    sget-object v1, Lproguard/ftsafe/b/d;->k:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v11

    sget-object v1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lproguard/ftsafe/b/d;->o:[Lproguard/ftsafe/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lproguard/ftsafe/b/d;->n:I

    iput p3, p0, Lproguard/ftsafe/b/d;->n:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILproguard/ftsafe/b/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lproguard/ftsafe/b/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lproguard/ftsafe/b/d;
    .locals 1

    const-class v0, Lproguard/ftsafe/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproguard/ftsafe/b/d;

    return-object p0
.end method

.method public static values()[Lproguard/ftsafe/b/d;
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/d;->o:[Lproguard/ftsafe/b/d;

    invoke-virtual {v0}, [Lproguard/ftsafe/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproguard/ftsafe/b/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lproguard/ftsafe/b/d;->n:I

    return v0
.end method
