.class public Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;
.super Ljava/lang/Object;
.source "Bech32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/utils/Bech32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bech32Data"
.end annotation


# instance fields
.field public final data:[B

.field public final hrp:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;->hrp:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;->data:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLim/imkey/imkeylibrary/utils/Bech32$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
