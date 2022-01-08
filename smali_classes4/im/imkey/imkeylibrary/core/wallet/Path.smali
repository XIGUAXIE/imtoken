.class public Lim/imkey/imkeylibrary/core/wallet/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static final BITCOIN_SEGWIT_TESTNET_PATH:Ljava/lang/String; = "m/49\'/1\'/0\'/"

.field public static final BITCOIN_TESTNET_PATH:Ljava/lang/String; = "m/44\'/1\'/0\'"

.field public static final BTC_PATH_PREFIX:Ljava/lang/String; = "m/44\'/0\'/0\'/"

.field public static final BTC_SEGWIT_PATH_PREFIX:Ljava/lang/String; = "m/49\'/0\'/0\'/"

.field public static final COSMOS_LEDGER:Ljava/lang/String; = "m/44\'/118\'/0\'/0/0"

.field public static final EOS_LEDGER:Ljava/lang/String; = "m/44\'/194\'/0\'/0/0"

.field public static final ETH_LEDGER:Ljava/lang/String; = "m/44\'/60\'/0\'/0/0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPath(Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v2, "imkey_path_illegal"

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    const-string v0, "^m/[0-9\'/]+$"

    .line 31
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p0, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p0, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p0, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
