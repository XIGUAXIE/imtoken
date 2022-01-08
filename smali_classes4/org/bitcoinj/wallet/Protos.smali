.class public final Lorg/bitcoinj/wallet/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$ExchangeRate;,
        Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Wallet;,
        Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionSigner;,
        Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Tag;,
        Lorg/bitcoinj/wallet/Protos$TagOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Extension;,
        Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$ScryptParameters;,
        Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Transaction;,
        Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionOutput;,
        Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionInput;,
        Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Script;,
        Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Key;,
        Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$DeterministicKey;,
        Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$EncryptedData;,
        Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$PeerAddress;,
        Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_wallet_DeterministicKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_DeterministicKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_EncryptedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_EncryptedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_ExchangeRate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_ExchangeRate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Tag_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Tag_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_TransactionSigner_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionSigner_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "\n\u000cwallet.proto\u0012\u0006wallet\"A\n\u000bPeerAddress\u0012\u0012\n\nip_address\u0018\u0001 \u0002(\u000c\u0012\u000c\n\u0004port\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008services\u0018\u0003 \u0002(\u0004\"M\n\rEncryptedData\u0012\u001d\n\u0015initialisation_vector\u0018\u0001 \u0002(\u000c\u0012\u001d\n\u0015encrypted_private_key\u0018\u0002 \u0002(\u000c\"\u0099\u0001\n\u0010DeterministicKey\u0012\u0012\n\nchain_code\u0018\u0001 \u0002(\u000c\u0012\u000c\n\u0004path\u0018\u0002 \u0003(\r\u0012\u0016\n\u000eissued_subkeys\u0018\u0003 \u0001(\r\u0012\u0016\n\u000elookahead_size\u0018\u0004 \u0001(\r\u0012\u0013\n\u000bisFollowing\u0018\u0005 \u0001(\u0008\u0012\u001e\n\u0013sigsRequiredToSpend\u0018\u0006 \u0001(\r:\u00011\"\u009a\u0003\n\u0003Key\u0012\u001e\n\u0004type\u0018\u0001 \u0002(\u000e2\u0010.wallet.Key.Type\u0012\u0014\n\u000csecret_bytes\u0018\u0002 \u0001(\u000c\u0012-\n\u000eencrypted_"

    const-string v1, "data\u0018\u0006 \u0001(\u000b2\u0015.wallet.EncryptedData\u0012\u0012\n\npublic_key\u0018\u0003 \u0001(\u000c\u0012\r\n\u0005label\u0018\u0004 \u0001(\t\u0012\u001a\n\u0012creation_timestamp\u0018\u0005 \u0001(\u0003\u00123\n\u0011deterministic_key\u0018\u0007 \u0001(\u000b2\u0018.wallet.DeterministicKey\u0012\u001a\n\u0012deterministic_seed\u0018\u0008 \u0001(\u000c\u0012;\n\u001cencrypted_deterministic_seed\u0018\t \u0001(\u000b2\u0015.wallet.EncryptedData\"a\n\u0004Type\u0012\u000c\n\u0008ORIGINAL\u0010\u0001\u0012\u0018\n\u0014ENCRYPTED_SCRYPT_AES\u0010\u0002\u0012\u001a\n\u0016DETERMINISTIC_MNEMONIC\u0010\u0003\u0012\u0015\n\u0011DETERMINISTIC_KEY\u0010\u0004\"5\n\u0006Script\u0012\u000f\n\u0007program\u0018\u0001 \u0002(\u000c\u0012\u001a\n\u0012creation_timestamp\u0018\u0002 \u0002(\u0003\"\u0092\u0001\n\u0010Tra"

    const-string v2, "nsactionInput\u0012\"\n\u001atransaction_out_point_hash\u0018\u0001 \u0002(\u000c\u0012#\n\u001btransaction_out_point_index\u0018\u0002 \u0002(\r\u0012\u0014\n\u000cscript_bytes\u0018\u0003 \u0002(\u000c\u0012\u0010\n\u0008sequence\u0018\u0004 \u0001(\r\u0012\r\n\u0005value\u0018\u0005 \u0001(\u0003\"\u007f\n\u0011TransactionOutput\u0012\r\n\u0005value\u0018\u0001 \u0002(\u0003\u0012\u0014\n\u000cscript_bytes\u0018\u0002 \u0002(\u000c\u0012!\n\u0019spent_by_transaction_hash\u0018\u0003 \u0001(\u000c\u0012\"\n\u001aspent_by_transaction_index\u0018\u0004 \u0001(\u0005\"\u00b7\u0003\n\u0015TransactionConfidence\u00120\n\u0004type\u0018\u0001 \u0001(\u000e2\".wallet.TransactionConfidence.Type\u0012\u001a\n\u0012appeared_at_height\u0018\u0002 \u0001(\u0005\u0012\u001e\n\u0016overriding_transaction"

    const-string v3, "\u0018\u0003 \u0001(\u000c\u0012\r\n\u0005depth\u0018\u0004 \u0001(\u0005\u0012)\n\u000cbroadcast_by\u0018\u0006 \u0003(\u000b2\u0013.wallet.PeerAddress\u0012\u001b\n\u0013last_broadcasted_at\u0018\u0008 \u0001(\u0003\u00124\n\u0006source\u0018\u0007 \u0001(\u000e2$.wallet.TransactionConfidence.Source\"`\n\u0004Type\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000c\n\u0008BUILDING\u0010\u0001\u0012\u000b\n\u0007PENDING\u0010\u0002\u0012\u0015\n\u0011NOT_IN_BEST_CHAIN\u0010\u0003\u0012\u0008\n\u0004DEAD\u0010\u0004\u0012\u000f\n\u000bIN_CONFLICT\u0010\u0005\"A\n\u0006Source\u0012\u0012\n\u000eSOURCE_UNKNOWN\u0010\u0000\u0012\u0012\n\u000eSOURCE_NETWORK\u0010\u0001\u0012\u000f\n\u000bSOURCE_SELF\u0010\u0002\"\u00c3\u0005\n\u000bTransaction\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\u0005\u0012\u000c\n\u0004hash\u0018\u0002 \u0002(\u000c\u0012&\n\u0004pool\u0018\u0003 \u0001(\u000e2\u0018.wallet.Transaction.Pool\u0012"

    const-string v4, "\u0011\n\tlock_time\u0018\u0004 \u0001(\r\u0012\u0012\n\nupdated_at\u0018\u0005 \u0001(\u0003\u00123\n\u0011transaction_input\u0018\u0006 \u0003(\u000b2\u0018.wallet.TransactionInput\u00125\n\u0012transaction_output\u0018\u0007 \u0003(\u000b2\u0019.wallet.TransactionOutput\u0012\u0012\n\nblock_hash\u0018\u0008 \u0003(\u000c\u0012 \n\u0018block_relativity_offsets\u0018\u000b \u0003(\u0005\u00121\n\nconfidence\u0018\t \u0001(\u000b2\u001d.wallet.TransactionConfidence\u00125\n\u0007purpose\u0018\n \u0001(\u000e2\u001b.wallet.Transaction.Purpose:\u0007UNKNOWN\u0012+\n\rexchange_rate\u0018\u000c \u0001(\u000b2\u0014.wallet.ExchangeRate\u0012\u000c\n\u0004memo\u0018\r \u0001(\t\"Y\n\u0004Pool\u0012\u000b\n\u0007UNSPENT\u0010\u0004\u0012\t\n\u0005SPENT\u0010\u0005\u0012\u000c\n"

    const-string v5, "\u0008INACTIVE\u0010\u0002\u0012\u0008\n\u0004DEAD\u0010\n\u0012\u000b\n\u0007PENDING\u0010\u0010\u0012\u0014\n\u0010PENDING_INACTIVE\u0010\u0012\"\u00a3\u0001\n\u0007Purpose\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0010\n\u000cUSER_PAYMENT\u0010\u0001\u0012\u0010\n\u000cKEY_ROTATION\u0010\u0002\u0012\u001c\n\u0018ASSURANCE_CONTRACT_CLAIM\u0010\u0003\u0012\u001d\n\u0019ASSURANCE_CONTRACT_PLEDGE\u0010\u0004\u0012\u001b\n\u0017ASSURANCE_CONTRACT_STUB\u0010\u0005\u0012\r\n\tRAISE_FEE\u0010\u0006\"N\n\u0010ScryptParameters\u0012\u000c\n\u0004salt\u0018\u0001 \u0002(\u000c\u0012\u0010\n\u0001n\u0018\u0002 \u0001(\u0003:\u000516384\u0012\u000c\n\u0001r\u0018\u0003 \u0001(\u0005:\u00018\u0012\u000c\n\u0001p\u0018\u0004 \u0001(\u0005:\u00011\"8\n\tExtension\u0012\n\n\u0002id\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\u0012\u0011\n\tmandatory\u0018\u0003 \u0002(\u0008\" \n\u0003Tag\u0012\u000b\n\u0003tag\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\"5\n\u0011Tr"

    const-string v6, "ansactionSigner\u0012\u0012\n\nclass_name\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004data\u0018\u0002 \u0001(\u000c\"\u00e9\u0004\n\u0006Wallet\u0012\u001a\n\u0012network_identifier\u0018\u0001 \u0002(\t\u0012\u001c\n\u0014last_seen_block_hash\u0018\u0002 \u0001(\u000c\u0012\u001e\n\u0016last_seen_block_height\u0018\u000c \u0001(\r\u0012!\n\u0019last_seen_block_time_secs\u0018\u000e \u0001(\u0003\u0012\u0018\n\u0003key\u0018\u0003 \u0003(\u000b2\u000b.wallet.Key\u0012(\n\u000btransaction\u0018\u0004 \u0003(\u000b2\u0013.wallet.Transaction\u0012&\n\u000ewatched_script\u0018\u000f \u0003(\u000b2\u000e.wallet.Script\u0012C\n\u000fencryption_type\u0018\u0005 \u0001(\u000e2\u001d.wallet.Wallet.EncryptionType:\u000bUNENCRYPTED\u00127\n\u0015encryption_parameters\u0018\u0006 \u0001(\u000b2\u0018.wall"

    const-string v7, "et.ScryptParameters\u0012\u0012\n\u0007version\u0018\u0007 \u0001(\u0005:\u00011\u0012$\n\textension\u0018\n \u0003(\u000b2\u0011.wallet.Extension\u0012\u0013\n\u000bdescription\u0018\u000b \u0001(\t\u0012\u0019\n\u0011key_rotation_time\u0018\r \u0001(\u0004\u0012\u0019\n\u0004tags\u0018\u0010 \u0003(\u000b2\u000b.wallet.Tag\u00126\n\u0013transaction_signers\u0018\u0011 \u0003(\u000b2\u0019.wallet.TransactionSigner\";\n\u000eEncryptionType\u0012\u000f\n\u000bUNENCRYPTED\u0010\u0001\u0012\u0018\n\u0014ENCRYPTED_SCRYPT_AES\u0010\u0002\"R\n\u000cExchangeRate\u0012\u0012\n\ncoin_value\u0018\u0001 \u0002(\u0003\u0012\u0012\n\nfiat_value\u0018\u0002 \u0002(\u0003\u0012\u001a\n\u0012fiat_currency_code\u0018\u0003 \u0002(\tB\u001d\n\u0013org.bitcoinj.walletB\u0006Protos"

    .line 18997
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 19079
    new-instance v1, Lorg/bitcoinj/wallet/Protos$1;

    invoke-direct {v1}, Lorg/bitcoinj/wallet/Protos$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 19088
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 19092
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19093
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "IpAddress"

    const-string v3, "Port"

    const-string v4, "Services"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19098
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19099
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "InitialisationVector"

    const-string v3, "EncryptedPrivateKey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19104
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_DeterministicKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19105
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "ChainCode"

    const-string v3, "Path"

    const-string v4, "IssuedSubkeys"

    const-string v5, "LookaheadSize"

    const-string v6, "IsFollowing"

    const-string v7, "SigsRequiredToSpend"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_DeterministicKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19110
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19111
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Type"

    const-string v3, "SecretBytes"

    const-string v4, "EncryptedData"

    const-string v5, "PublicKey"

    const-string v6, "Label"

    const-string v7, "CreationTimestamp"

    const-string v8, "DeterministicKey"

    const-string v9, "DeterministicSeed"

    const-string v10, "EncryptedDeterministicSeed"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19116
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19117
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Program"

    const-string v3, "CreationTimestamp"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19122
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19123
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Value"

    const-string v3, "ScriptBytes"

    const-string v4, "TransactionOutPointHash"

    const-string v5, "TransactionOutPointIndex"

    const-string v6, "Sequence"

    filled-new-array {v4, v5, v3, v6, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19128
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19129
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "SpentByTransactionHash"

    const-string v5, "SpentByTransactionIndex"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19134
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19135
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Type"

    const-string v3, "AppearedAtHeight"

    const-string v4, "OverridingTransaction"

    const-string v5, "Depth"

    const-string v6, "BroadcastBy"

    const-string v7, "LastBroadcastedAt"

    const-string v8, "Source"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19140
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19141
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "Hash"

    const-string v4, "Pool"

    const-string v5, "LockTime"

    const-string v6, "UpdatedAt"

    const-string v7, "TransactionInput"

    const-string v8, "TransactionOutput"

    const-string v9, "BlockHash"

    const-string v10, "BlockRelativityOffsets"

    const-string v11, "Confidence"

    const-string v12, "Purpose"

    const-string v13, "ExchangeRate"

    const-string v14, "Memo"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19146
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19147
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Salt"

    const-string v3, "N"

    const-string v4, "R"

    const-string v5, "P"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19152
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19153
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Data"

    const-string v3, "Id"

    const-string v4, "Mandatory"

    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19158
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Tag_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19159
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Tag"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Tag_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19164
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionSigner_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19165
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "ClassName"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionSigner_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19170
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19171
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "NetworkIdentifier"

    const-string v3, "LastSeenBlockHash"

    const-string v4, "LastSeenBlockHeight"

    const-string v5, "LastSeenBlockTimeSecs"

    const-string v6, "Key"

    const-string v7, "Transaction"

    const-string v8, "WatchedScript"

    const-string v9, "EncryptionType"

    const-string v10, "EncryptionParameters"

    const-string v11, "Version"

    const-string v12, "Extension"

    const-string v13, "Description"

    const-string v14, "KeyRotationTime"

    const-string v15, "Tags"

    const-string v16, "TransactionSigners"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 19176
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ExchangeRate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19177
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "CoinValue"

    const-string v3, "FiatValue"

    const-string v4, "FiatCurrencyCode"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ExchangeRate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Tag_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Tag_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionSigner_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionSigner_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ExchangeRate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ExchangeRate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$20902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_DeterministicKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_DeterministicKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 18992
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
