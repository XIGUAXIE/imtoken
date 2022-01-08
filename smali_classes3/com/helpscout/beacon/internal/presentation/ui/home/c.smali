.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/c;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$anim;->hs_beacon_ask_from_right_in:I

    sget v1, Lcom/helpscout/beacon/ui/R$anim;->hs_beacon_ask_from_left_out:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$anim;->hs_beacon_ask_from_left_in:I

    sget v1, Lcom/helpscout/beacon/ui/R$anim;->hs_beacon_ask_from_right_out:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
