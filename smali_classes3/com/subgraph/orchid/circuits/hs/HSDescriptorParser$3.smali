.class synthetic Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;
.super Ljava/lang/Object;
.source "HSDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$3;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
