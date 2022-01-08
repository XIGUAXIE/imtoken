.class final enum Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
.super Ljava/lang/Enum;
.source "DocumentKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final VARIABLE_ARGUMENT_COUNT:I = -0x1

.field public static final enum VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;


# instance fields
.field private final argumentCount:I

.field private final consensusOnly:Z

.field private final keyword:Ljava/lang/String;

.field private final section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field private final voteOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 9
    new-instance v6, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "NETWORK_STATUS_VERSION"

    const/4 v2, 0x0

    const-string v3, "network-status-version"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v6, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v11, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v8, "VOTE_STATUS"

    const/4 v9, 0x1

    const-string v10, "vote-status"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v2, "CONSENSUS_METHODS"

    const/4 v3, 0x2

    const-string v4, "consensus-methods"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v12, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v9, "CONSENSUS_METHOD"

    const/4 v10, 0x3

    const-string v11, "consensus-method"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v2, "PUBLISHED"

    const/4 v3, 0x4

    const-string v4, "published"

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v12, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v9, "VALID_AFTER"

    const/4 v10, 0x5

    const-string v11, "valid-after"

    const/4 v13, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v2, "FRESH_UNTIL"

    const/4 v3, 0x6

    const-string v4, "fresh-until"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v11, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v8, "VALID_UNTIL"

    const/4 v9, 0x7

    const-string v10, "valid-until"

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v2, "VOTING_DELAY"

    const/16 v3, 0x8

    const-string v4, "voting-delay"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 18
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v11, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v8, "CLIENT_VERSIONS"

    const/16 v9, 0x9

    const-string v10, "client-versions"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v2, "SERVER_VERSIONS"

    const/16 v3, 0xa

    const-string v4, "server-versions"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 20
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v2, 0xb

    const-string v3, "KNOWN_FLAGS"

    const-string v4, "known-flags"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 21
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v3, 0xc

    const-string v4, "PARAMS"

    const-string v5, "params"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 23
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v10, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v7, "DIR_SOURCE"

    const/16 v8, 0xd

    const-string v9, "dir-source"

    const/4 v11, 0x6

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 24
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v4, 0xe

    const-string v5, "CONTACT"

    const-string v6, "contact"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 25
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v11, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v8, "VOTE_DIGEST"

    const/16 v9, 0xf

    const-string v10, "vote-digest"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v19, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v16, "R"

    const/16 v17, 0x10

    const-string v18, "r"

    const/16 v20, 0x8

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 28
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v5, 0x11

    const-string v6, "S"

    const-string v7, "s"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v6, 0x12

    const-string v7, "V"

    const-string v8, "v"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 30
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v13, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v10, "W"

    const/16 v11, 0x13

    const-string v12, "w"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v19, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v16, "P"

    const/16 v17, 0x14

    const-string v18, "p"

    const/16 v20, 0x2

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 32
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v11, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v8, "M"

    const/16 v9, 0x15

    const-string v10, "m"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v7, 0x16

    const-string v8, "DIRECTORY_FOOTER"

    const-string v9, "directory-footer"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 35
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v14, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v11, "BANDWIDTH_WEIGHTS"

    const/16 v12, 0x17

    const-string v13, "bandwidth-weights"

    const/16 v15, 0x13

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    sget-object v20, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v17, "DIRECTORY_SIGNATURE"

    const/16 v18, 0x18

    const-string v19, "directory-signature"

    const/16 v21, 0x2

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 38
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v1, 0x19

    const-string v8, "UNKNOWN_KEYWORD"

    const-string v9, "KEYWORD NOT FOUND"

    invoke-direct {v0, v8, v1, v9}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v8, 0x1a

    new-array v8, v8, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 5
    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x4

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x5

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x6

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v10, 0x7

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v10, 0x8

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v10, 0x9

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v10, 0xa

    aput-object v9, v8, v10

    sget-object v9, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v9, v8, v2

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0xd

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v8, v4

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0xf

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x10

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v8, v5

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v8, v6

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x13

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x14

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x15

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v8, v7

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x17

    aput-object v2, v8, v3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/16 v3, 0x18

    aput-object v2, v8, v3

    aput-object v0, v8, v1

    sput-object v8, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "I)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "IZ)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 62
    invoke-direct/range {v0 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "IZZ)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->keyword:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    .line 69
    iput p5, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->argumentCount:I

    .line 70
    iput-boolean p6, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->voteOnly:Z

    .line 71
    iput-boolean p7, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->consensusOnly:Z

    return-void
.end method

.method static findKeyword(Ljava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 5

    .line 75
    invoke-static {}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->values()[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 76
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 1

    .line 5
    const-class v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 1

    .line 5
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-object v0
.end method


# virtual methods
.method public getArgumentCount()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->argumentCount:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method public isConsensusOnly()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->consensusOnly:Z

    return v0
.end method

.method public isVoteOnly()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->voteOnly:Z

    return v0
.end method
