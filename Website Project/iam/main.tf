provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "myUser" {
    name = "Juan"
}

resource "aws_iam_policy" "customPolicy" {
    name = "myPolicy"
    policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "VisualEditor0",
			"Effect": "Allow",
			"Action": [
				"cloudfront:ListFieldLevelEncryptionConfigs",
				"ec2:DescribeCoipPools",
				"cloudfront:GetMonitoringSubscription",
				"ec2:DescribeVerifiedAccessEndpoints",
				"ec2:DescribeLocalGatewayVirtualInterfaces",
				"ec2:DescribeNetworkInsightsPaths",
				"ec2:DescribeHostReservationOfferings",
				"ec2:DescribeVolumeStatus",
				"ec2:DescribeVolumes",
				"ec2:DescribeFpgaImageAttribute",
				"ec2:DescribeExportTasks",
				"ec2:DescribeTransitGatewayMulticastDomains",
				"ec2:DescribeManagedPrefixLists",
				"ec2:DescribeKeyPairs",
				"ec2:GetVerifiedAccessEndpointPolicy",
				"cloudfront:GetCloudFrontOriginAccessIdentityConfig",
				"ec2:DescribeVpcClassicLinkDnsSupport",
				"ec2:DescribeSnapshotAttribute",
				"ec2:DescribeIpamResourceDiscoveryAssociations",
				"cloudfront:GetPublicKey",
				"ec2:DescribeInstanceEventWindows",
				"ec2:DescribeVolumeAttribute",
				"ec2:DescribeLocalGatewayVirtualInterfaceGroups",
				"ec2:DescribeVpcEndpointServicePermissions",
				"ec2:DescribeTransitGatewayAttachments",
				"ec2:DescribeAddressTransfers",
				"ec2:SearchLocalGatewayRoutes",
				"ec2:DescribeTrunkInterfaceAssociations",
				"ec2:DescribeInstanceConnectEndpoints",
				"ec2:DescribeFleets",
				"ec2:DescribeAwsNetworkPerformanceMetricSubscriptions",
				"cloudfront:ListDistributionsByWebACLId",
				"ec2:DescribeMacHosts",
				"ec2:DescribeCapacityReservationFleets",
				"cloudfront:GetContinuousDeploymentPolicy",
				"cloudfront:ListCloudFrontOriginAccessIdentities",
				"ec2:DescribePrincipalIdFormat",
				"ec2:DescribeFlowLogs",
				"ec2:DescribeRegions",
				"ec2:DescribeVpcEndpointServices",
				"ec2:DescribeSpotInstanceRequests",
				"ec2:DescribeVerifiedAccessTrustProviders",
				"ec2:DescribeTransitGatewayRouteTables",
				"cloudfront:ListRateCards",
				"ec2:DescribeLocalGatewayRouteTables",
				"ec2:SearchTransitGatewayMulticastGroups",
				"ec2:GetIpamPoolAllocations",
				"ec2:DescribeHostReservations",
				"ec2:GetInstanceMetadataDefaults",
				"ec2:DescribeBundleTasks",
				"cloudfront:GetCachePolicyConfig",
				"ec2:DescribeSpotFleetRequestHistory",
				"ec2:DescribeIdFormat",
				"ec2:DescribeFastSnapshotRestores",
				"ec2:GetVpnTunnelReplacementStatus",
				"ec2:DescribeImportSnapshotTasks",
				"cloudfront:GetRealtimeLogConfig",
				"ec2:DescribeScheduledInstances",
				"ec2:DescribeImageAttribute",
				"cloudfront:ListInvalidations",
				"ec2:DescribeIpv6Pools",
				"ec2:DescribeReservedInstancesModifications",
				"ec2:DescribeSubnets",
				"ec2:DescribeMovingAddresses",
				"ec2:DescribeFleetHistory",
				"cloudfront:GetFunction",
				"ec2:DescribeVerifiedAccessGroups",
				"ec2:DescribeTransitGateways",
				"ec2:DescribeAddressesAttribute",
				"ec2:DescribeVpcAttribute",
				"cloudfront:ListOriginRequestPolicies",
				"cloudfront:GetSavingsPlan",
				"ec2:GetTransitGatewayPolicyTableEntries",
				"ec2:DescribeVerifiedAccessInstanceLoggingConfigurations",
				"ec2:DescribeInstanceTypeOfferings",
				"ec2:DescribeTrafficMirrorTargets",
				"ec2:DescribeAvailabilityZones",
				"ec2:DescribeNetworkInterfaceAttribute",
				"ec2:DescribeVpcEndpointConnections",
				"ec2:DescribeInstanceStatus",
				"cloudfront:GetStreamingDistributionConfig",
				"ec2:DescribeIdentityIdFormat",
				"ec2:DescribeClassicLinkInstances",
				"ec2:DescribeTransitGatewayConnects",
				"ec2:DescribeVpcEndpointConnectionNotifications",
				"ec2:DescribeFpgaImages",
				"ec2:DescribeVpcs",
				"cloudfront:GetCachePolicy",
				"ec2:DescribeStaleSecurityGroups",
				"ec2:DescribeVolumesModifications",
				"ec2:DescribeTransitGatewayRouteTableAnnouncements",
				"ec2:DescribeClientVpnConnections",
				"ec2:DescribeByoipCidrs",
				"ec2:DescribeInternetGateways",
				"cloudfront:ListSavingsPlans",
				"ec2:DescribeTrafficMirrorFilterRules",
				"cloudfront:GetKeyGroup",
				"ec2:DescribeAccountAttributes",
				"cloudfront:ListContinuousDeploymentPolicies",
				"ec2:DescribeNetworkAcls",
				"ec2:DescribeRouteTables",
				"cloudfront:GetKeyGroupConfig",
				"ec2:DescribeClientVpnEndpoints",
				"cloudfront:GetFieldLevelEncryptionProfile",
				"cloudfront:ListUsages",
				"ec2:DescribeLaunchTemplates",
				"ec2:DescribeVpnConnections",
				"ec2:DescribeReservedInstancesOfferings",
				"ec2:GetGroupsForCapacityReservation",
				"ec2:DescribeVerifiedAccessInstances",
				"ec2:DescribeInstanceCreditSpecifications",
				"ec2:DescribeVpcClassicLink",
				"ec2:DescribeInstanceTopology",
				"ec2:DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations",
				"ec2:GetInstanceTypesFromInstanceRequirements",
				"ec2:DescribeSecurityGroupRules"
			],
			"Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "policyBind" {
  name = "policy-attachment"
  users = [aws_iam_user.myUser.name]
  policy_arn = aws_iam_policy.customPolicy.arn
}