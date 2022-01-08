.class public Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;
.super Ljava/lang/Object;
.source "ETHAddressValidator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/validators/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/consenlabs/tokencore/wallet/validators/Validator<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ignoreCaseAddrPattern:Ljava/util/regex/Pattern;

.field private static final lowerCaseAddrPattern:Ljava/util/regex/Pattern;

.field private static final upperCaseAddrPattern:Ljava/util/regex/Pattern;


# instance fields
.field private address:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(0x)?[0-9a-f]{40}$"

    const/4 v1, 0x2

    .line 21
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->ignoreCaseAddrPattern:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->lowerCaseAddrPattern:Ljava/util/regex/Pattern;

    const-string v0, "^(0x)?[0-9A-F]{40}$"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->upperCaseAddrPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->address:Ljava/lang/String;

    return-void
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->ignoreCaseAddrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    sget-object v0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->lowerCaseAddrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->upperCaseAddrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->validateChecksumAddress(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private validateChecksumAddress(Ljava/lang/String;)Z
    .locals 8

    .line 55
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 58
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_1

    if-le v5, v7, :cond_2

    .line 67
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    if-le v5, v7, :cond_3

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method


# virtual methods
.method public bridge synthetic validate()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->validate()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/lang/Void;
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "address_invalid"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
