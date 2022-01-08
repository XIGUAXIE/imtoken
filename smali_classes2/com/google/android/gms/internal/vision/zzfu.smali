.class final enum Lcom/google/android/gms/internal/vision/zzfu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzfu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzvz:Lcom/google/android/gms/internal/vision/zzfu;

.field public static final enum zzwa:Lcom/google/android/gms/internal/vision/zzfu;

.field public static final enum zzwb:Lcom/google/android/gms/internal/vision/zzfu;

.field public static final enum zzwc:Lcom/google/android/gms/internal/vision/zzfu;

.field private static final synthetic zzwe:[Lcom/google/android/gms/internal/vision/zzfu;


# instance fields
.field private final zzwd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfu;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/vision/zzfu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfu;->zzvz:Lcom/google/android/gms/internal/vision/zzfu;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfu;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/vision/zzfu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfu;->zzwa:Lcom/google/android/gms/internal/vision/zzfu;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfu;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/gms/internal/vision/zzfu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfu;->zzwb:Lcom/google/android/gms/internal/vision/zzfu;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfu;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/gms/internal/vision/zzfu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfu;->zzwc:Lcom/google/android/gms/internal/vision/zzfu;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/android/gms/internal/vision/zzfu;

    .line 9
    sget-object v6, Lcom/google/android/gms/internal/vision/zzfu;->zzvz:Lcom/google/android/gms/internal/vision/zzfu;

    aput-object v6, v5, v1

    sget-object v1, Lcom/google/android/gms/internal/vision/zzfu;->zzwa:Lcom/google/android/gms/internal/vision/zzfu;

    aput-object v1, v5, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzfu;->zzwb:Lcom/google/android/gms/internal/vision/zzfu;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/google/android/gms/internal/vision/zzfu;->zzwe:[Lcom/google/android/gms/internal/vision/zzfu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/vision/zzfu;->zzwd:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzfu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfu;->zzwe:[Lcom/google/android/gms/internal/vision/zzfu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzfu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzfu;

    return-object v0
.end method
