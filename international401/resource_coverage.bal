// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerina/constraint;
import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_COVERAGE = "http://hl7.org/fhir/StructureDefinition/Coverage";
public const RESOURCE_NAME_COVERAGE = "Coverage";

# FHIR Coverage resource record.
#
# + resourceType - The type of the resource describes
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + subrogation - When 'subrogation=true' this insurance instance has been included not for adjudication but to provide insurers with the details to recover costs.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + 'type - The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization.
# + network - The insurer-specific identifier for the insurer-defined network of providers to which the beneficiary may seek treatment which will be covered at the 'in-network' rate, otherwise 'out of network' terms and conditions apply.
# + payor - The program or plan underwriter or payor including both insurance and non-insurance agreements, such as patient-pay agreements.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + relationship - The relationship of beneficiary (patient) to the subscriber.
# + 'class - A suite of underwriter specific classifiers.
# + dependent - A unique identifier for a dependent under the coverage.
# + 'order - The order of applicability of this coverage relative to other coverages which are currently in force. Note, there may be gaps in the numbering and this does not imply primary, secondary etc. as the specific positioning of coverages depends upon the episode of care.
# + identifier - A unique identifier assigned to this coverage.
# + costToBeneficiary - A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been included on the health card.
# + period - Time period during which the coverage is in force. A missing start date indicates the start date isn't known, a missing end date means the coverage is continuing to be in force.
# + subscriber - The party who has signed-up for or 'owns' the contractual relationship to the policy or to whom the benefit of the policy for services rendered to them or their family is due.
# + contract - The policy(s) which constitute this insurance coverage.
# + subscriberId - The insurer assigned ID for the Subscriber.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + beneficiary - The party who benefits from the insurance coverage; the patient when products and/or services are provided.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + policyHolder - The party who 'owns' the insurance policy.
# + status - The status of the resource instance.
@r4:ResourceDefinition {
    resourceType: "Coverage",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Coverage",
    elements: {
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.extension"
        },
        "subrogation" : {
            name: "subrogation",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.subrogation"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "type" : {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.type",
            valueSet: "http://hl7.org/fhir/ValueSet/coverage-type"
        },
        "network" : {
            name: "network",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.network"
        },
        "payor" : {
            name: "payor",
            dataType: r4:Reference,
            min: 1,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.payor"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.text"
        },
        "relationship" : {
            name: "relationship",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.relationship",
            valueSet: "http://hl7.org/fhir/ValueSet/subscriber-relationship"
        },
        "class" : {
            name: "class",
            dataType: CoverageClass,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.class"
        },
        "dependent" : {
            name: "dependent",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.dependent"
        },
        "order" : {
            name: "order",
            dataType: r4:positiveInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.order"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.identifier"
        },
        "costToBeneficiary" : {
            name: "costToBeneficiary",
            dataType: CoverageCostToBeneficiary,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.costToBeneficiary"
        },
        "period" : {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.period"
        },
        "subscriber" : {
            name: "subscriber",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.subscriber"
        },
        "contract" : {
            name: "contract",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.contract"
        },
        "subscriberId" : {
            name: "subscriberId",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.subscriberId"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Coverage.contained"
        },
        "beneficiary" : {
            name: "beneficiary",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "Coverage.beneficiary"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.implicitRules"
        },
        "policyHolder" : {
            name: "policyHolder",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Coverage.policyHolder"
        },
        "status" : {
            name: "status",
            dataType: CoverageStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Coverage.status",
            valueSet: "http://hl7.org/fhir/ValueSet/fm-status|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type Coverage record {|
    *r4:DomainResource;

    RESOURCE_NAME_COVERAGE resourceType = RESOURCE_NAME_COVERAGE;

    r4:Extension[] extension?;
    boolean subrogation?;
    r4:Extension[] modifierExtension?;
    r4:code language?;
    r4:CodeableConcept 'type?;
    string network?;
    @constraint:Array {
       minLength: 1
    }
    r4:Reference[] payor;
    string id?;
    r4:Narrative text?;
    r4:CodeableConcept relationship?;
    CoverageClass[] 'class?;
    string dependent?;
    r4:positiveInt 'order?;
    r4:Identifier[] identifier?;
    CoverageCostToBeneficiary[] costToBeneficiary?;
    r4:Period period?;
    r4:Reference subscriber?;
    r4:Reference[] contract?;
    string subscriberId?;
    r4:Resource[] contained?;
    r4:Reference beneficiary;
    r4:Meta meta?;
    r4:uri implicitRules?;
    r4:Reference policyHolder?;
    CoverageStatus status;
    r4:Element ...;
|};

# CoverageStatus enum
public enum CoverageStatus {
   CODE_STATUS_DRAFT = "draft",
   CODE_STATUS_ACTIVE = "active",
   CODE_STATUS_CANCELLED = "cancelled",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error"
}

# FHIR CoverageCostToBeneficiary datatype record.
#
# + exception - A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + valueMoney - The amount due from the patient for the cost category.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'type - The category of patient centric costs associated with treatment.
# + valueQuantity - The amount due from the patient for the cost category.
@r4:DataTypeDefinition {
    name: "CoverageCostToBeneficiary",
    baseType: (),
    elements: {
        "exception": {
            name: "exception",
            dataType: CoverageCostToBeneficiaryException,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A suite of codes indicating exceptions or reductions to patient costs and their effective periods.",
            path: "Coverage.costToBeneficiary.exception"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Coverage.costToBeneficiary.extension"
        },
        "valueMoney": {
            name: "valueMoney",
            dataType: r4:Money,
            min: 0,
            max: 1,
            isArray: false,
            description: "The amount due from the patient for the cost category.",
            path: "Coverage.costToBeneficiary.value[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Coverage.costToBeneficiary.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Coverage.costToBeneficiary.id"
        },
        "type": {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The category of patient centric costs associated with treatment.",
            path: "Coverage.costToBeneficiary.type"
        },
        "valueQuantity": {
            name: "valueQuantity",
            dataType: r4:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "The amount due from the patient for the cost category.",
            path: "Coverage.costToBeneficiary.value[x]"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type CoverageCostToBeneficiary record {|
    *r4:BackboneElement;

    CoverageCostToBeneficiaryException[] exception?;
    r4:Extension[] extension?;
    r4:Money valueMoney;
    r4:Extension[] modifierExtension?;
    string id?;
    r4:CodeableConcept 'type?;
    r4:Quantity valueQuantity;
|};

# FHIR CoverageCostToBeneficiaryException datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The timeframe during when the exception is in force.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'type - The code for the specific exception.
@r4:DataTypeDefinition {
    name: "CoverageCostToBeneficiaryException",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Coverage.costToBeneficiary.exception.extension"
        },
        "period": {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The timeframe during when the exception is in force.",
            path: "Coverage.costToBeneficiary.exception.period"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Coverage.costToBeneficiary.exception.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Coverage.costToBeneficiary.exception.id"
        },
        "type": {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The code for the specific exception.",
            path: "Coverage.costToBeneficiary.exception.type"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type CoverageCostToBeneficiaryException record {|
    *r4:BackboneElement;

    r4:Extension[] extension?;
    r4:Period period?;
    r4:Extension[] modifierExtension?;
    string id?;
    r4:CodeableConcept 'type;
|};

# FHIR CoverageClass datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + name - A short description for the class.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'type - The type of classification for which an insurer-specific class label or number and optional name is provided, for example may be used to identify a class of coverage or employer group, Policy, Plan.
# + value - The alphanumeric string value associated with the insurer issued label.
@r4:DataTypeDefinition {
    name: "CoverageClass",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Coverage.class.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Coverage.class.modifierExtension"
        },
        "name": {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "A short description for the class.",
            path: "Coverage.class.name"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Coverage.class.id"
        },
        "type": {
            name: "type",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The type of classification for which an insurer-specific class label or number and optional name is provided, for example may be used to identify a class of coverage or employer group, Policy, Plan.",
            path: "Coverage.class.type"
        },
        "value": {
            name: "value",
            dataType: string,
            min: 1,
            max: 1,
            isArray: false,
            description: "The alphanumeric string value associated with the insurer issued label.",
            path: "Coverage.class.value"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type CoverageClass record {|
    *r4:BackboneElement;

    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    string name?;
    string id?;
    r4:CodeableConcept 'type;
    string value;
|};

